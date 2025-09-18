% cpc-hepnp-optimized.cls
% Optimized LaTeX class file for the Chinese Physics C journal
% This file replaces outdated packages with modern alternatives while maintaining the same formatting.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cpc-hepnp-optimized}[2023/10/01 v1.0 Optimized class for Chinese Physics C]

% Load modern alternatives to outdated packages
\RequirePackage{amsmath}  % for advanced math
\RequirePackage{amsfonts}  % for fonts
\RequirePackage{amssymb}   % for symbols
\RequirePackage{graphicx}  % for including graphics
\RequirePackage{hyperref}  % for hyperlinks
\RequirePackage{geometry}   % for page dimensions
\RequirePackage{pgf}       % for graphics and plots

% Page layout settings
\geometry{
    a4paper,
    left=2.5cm,
    right=2.5cm,
    top=3cm,
    bottom=3cm
}

% Document formatting options
\setlength{\parindent}{0pt}  % No indentation
\setlength{\parskip}{1em}     % Space between paragraphs

% Begin Class Definition
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\LoadClass{article}  % Base class is article

% Other custom definitions can go here

\endinput
