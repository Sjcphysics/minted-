% cpc-hepnp-commented.cls: A LaTeX class file for formatting articles in the style of CPC HEP NP.
% This file contains detailed comments explaining the structure and functionality of the LaTeX class file.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpc-hepnp}[2023/10/01 v1.0 LaTeX class for CPC HEP NP]

% Begin class declaration
\DeclareOption{twocolumn}{\setlength{\columnsep}{1.5em}
\setlength{\columnwidth}{0.5\textwidth}}
\DeclareOption{a4paper}{\setlength{\textheight}{297mm}
\setlength{\textwidth}{210mm}}
\ProcessOptions\relax

% This file allows for several options such as 'twocolumn' and 'a4paper' to adjust layout settings.

% Document class settings
\newcommand{\cpcTitle}[1]{\title{#1}}
\newcommand{\cpcAuthor}[1]{\author{#1}}
\newcommand{\cpcAbstract}[1]{\begin{abstract}#1\end{abstract}}

% Above commands are examples of how to define title, author, and abstract in a document.

% Setting up the document
\newenvironment{cpcBody}{\begin{document}\maketitle\begin{multicols}{2}}{\end{multicols}\end{document}}

% The cpcBody environment is used to wrap the main content of the document.

% Usage example:
% To use this class file in a LaTeX document, include the following line in the preamble:
% \documentclass[twocolumn,a4paper]{cpc-hepnp}

% You can then write your document as usual, using the defined commands.

