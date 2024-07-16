# texstudio与vscode的minted宏包的使用环境与配置
# minted宏包的使用环境与配置

## 安装`pygments`库
minted依托于pygments库，因此必须安装。(我用的Windows环境)
```python
pip install pygments
```
Ubuntu系统好像是
```
sudo -H pip install pygments
```
## 修改编译参数
在TeXstudio内，点击Options->Configure TeXstudio->Commands（设置->命令），原来的LuaLaTeX编译命令为：
```
lualatex -synctex=1 -interaction=nonstopmode %.tex
```
添加参数-shell-escape，修改为：
```
lualatex -shell-escape -synctex=1 -interaction=nonstopmode %.tex
```
`-shell-escape`加在`-synctex=1`前面
xelatex设置一样

![示例图](D:\BaiduSyncdisk\自玩\latex\images\1.png)

### texstudio配置

打开用户设置(settings.json)—>找到编译工具的代码行`"latex-workshop.latex.tools": `在`"-synctex=1"`前面加上`"-shell-escape",`(PS:不要忘记是英文逗号",")

打开用户设置的快捷方式按F1

![F1快捷打开](D:\BaiduSyncdisk\自玩\latex\images\打开用户设置.png)

```json
 "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-shell-escape",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        // 添加脚本命令-shell-escape添加在 "-synctex=1",之前
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-shell-escape",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOCFILE%"
            ]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-shell-escape",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-pdf",
                "-outdir=%OUTDIR%",
                "%DOCFILE%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ]
        }
    ],
```
