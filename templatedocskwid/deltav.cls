\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{deltav}[2026/02/01 DeltaV Academic Class - Enhanced Technical Report]

\LoadClass[12pt,a4paper]{article}

% --- Codificação e Linguagem ---
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[brazilian]{babel}
\RequirePackage{lmodern}
\RequirePackage{inconsolata}

% CORREÇÃO FINAL: [nopatch=footnote] remove o aviso "Unable to apply patch"
\RequirePackage[nopatch=footnote]{microtype} 

% --- Geometria e Layout ---
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{fancyhdr}
\RequirePackage{float} 

\geometry{
  left=3cm,
  right=2.5cm,
  top=3cm,
  bottom=2.5cm
}

% --- Tabelas e Colunas Personalizadas ---
\RequirePackage{booktabs} 
\RequirePackage{tabularx} 
\RequirePackage{multirow} 
\RequirePackage{array}

% Definição das colunas inteligentes (Centralizada, Esquerda, Direita)
\newcolumntype{C}{>{\centering\arraybackslash}X} 
\newcolumntype{L}{>{\raggedright\arraybackslash}X} 
\newcolumntype{R}{>{\raggedleft\arraybackslash}X} 

% --- Cores e Gráficos ---
\RequirePackage{graphicx}
\RequirePackage{tikz}
\RequirePackage{xcolor}

% Configuração para evitar avisos de margem no todonotes
\setlength{\marginparwidth}{2cm} 
\RequirePackage{todonotes} 

% --- Matemática e Física ---
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{siunitx} 

\sisetup{
  output-decimal-marker = {,},
  inter-unit-product = \ensuremath{{}\cdot{}},
  per-mode = symbol
}

% --- Código Fonte (Estilo "VS Code" Corrigido) ---
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox} 
\RequirePackage{inconsolata}
\RequirePackage{caption} % Necessário para estilizar a legenda
\renewcommand{\lstlistingname}{Código} 
\renewcommand{\lstlistlistingname}{Lista de Códigos}
% --- Paleta de Cores (Dracula / Atom One Dark) ---
\definecolor{dkgray}{HTML}{282C34}    % Fundo Principal
\definecolor{dkwhite}{HTML}{ABB2BF}    % Texto Base
\definecolor{graycomment}{HTML}{7F848E} % Comentários
\definecolor{dkmagenta}{HTML}{C678DD}  % Keywords
\definecolor{dkgreen}{HTML}{98C379}    % Strings
\definecolor{dkblue}{HTML}{61AFEF}     % Funções/Vars

% --- Configuração da Legenda (Correção do Erro) ---
% Isso define que todas as legendas de 'lstlisting' serão brancas e negrito
\captionsetup[lstlisting]{
    font={color=dkwhite, bf},
    labelfont={color=dkwhite, bf},
    justification=centering,
    skip=6pt
}

% --- Estilo do Código (Listings) ---
\lstdefinestyle{mystyle}{
    % -- Cores e Fontes --
    basicstyle=\ttfamily\footnotesize\color{dkwhite}, 
    commentstyle=\itshape\color{graycomment},
    keywordstyle=\bfseries\color{dkmagenta},
    numberstyle=\tiny\color{graycomment},
    stringstyle=\color{dkgreen},
    identifierstyle=\color{dkblue},
    % -- Formatação --
    captionpos=t,                    % Legenda no topo
    abovecaptionskip=4pt,            
    belowcaptionskip=8pt,           
    breakatwhitespace=false,         
    breaklines=true,                 
    keepspaces=true,                 
    numbers=left,                    
    numbersep=15pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2,
    backgroundcolor=,                % Transparente (o tcolorbox faz o fundo)
}
\lstset{style=mystyle}

% --- O Container Visual (Tcolorbox) ---
\tcolorboxenvironment{lstlisting}{
    enhanced,              
    colback=dkgray,        
    colframe=dkgray,       
    arc=6pt,               
    boxrule=0pt,           
    left=10pt, right=10pt, top=-3pt, bottom=3pt, 
    drop shadow,           
    breakable              
}

% --- Legendas e Referências ---
\RequirePackage{subcaption} 
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[nameinlink, noabbrev]{cleveref} 
\RequirePackage{enumitem} 

% --- Referências Bibliográficas (Padrão ABNT) ---
% Carrega o BibLaTeX com estilo numérico ABNT
\RequirePackage[style=abnt-numeric, backend=biber, url=true, doi=false, isbn=false]{biblatex}

% Configurações visuais extras para ABNT
\DefineBibliographyStrings{brazilian}{%
  bibliography = {Referências Bibliográficas},
}
% Deixa o título das referências em negrito (opcional, estilo comum)
\DeclareFieldFormat{title}{\textbf{#1}}

% --- Cabeçalho e Rodapé ---
\definecolor{frontpagedark}{HTML}{000000}

\onehalfspacing
\setlength{\headheight}{15pt} 
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\includegraphics[height=1.3cm]{capa/logo.png}}
\fancyfoot[C]{\thepage} 
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{plain}{
  \fancyhf{}
  \fancyhead[R]{\includegraphics[height=1.3cm]{capa/logo.png}}
  \fancyfoot[C]{\thepage}
  \renewcommand{\headrulewidth}{0pt}
}

% --- Comandos de Capa ---
\newcommand{\latofont}{\normalfont}

\newcommand{\institution}[1]{\def\@institution{#1}}
\newcommand{\school}[1]{\def\@school{#1}}
\newcommand{\thesistitle}[1]{\def\@thesistitle{#1}}
\newcommand{\thesissubtitle}[1]{\def\@thesissubtitle{#1}}
\newcommand{\locationdate}[1]{\def\@locationdate{#1}}

\newcommand{\makecover}{
\newgeometry{left=2.5cm, right=2cm, top=2.5cm, bottom=2.5cm} 
\begin{titlepage}
    \latofont
    \setlength{\parindent}{-8pt}
    \color{frontpagedark}
    \begin{tikzpicture}[remember picture, overlay]
        \node[opacity=0.6, inner sep=0pt] at (current page.south east) [anchor=south east, xshift=5cm, yshift=1cm] {
            \includegraphics[width=20cm]{capa/kwidborda.png} 
        };
    \end{tikzpicture}
    \begin{tikzpicture}[remember picture, overlay]
        \node[opacity=0.2, inner sep=0pt] at (current page.south west) [anchor=south west, xshift=-5cm, yshift=1cm] {
            \includegraphics[width=10cm]{capa/cover_logo.png} 
        };
    \end{tikzpicture}
    \raggedright
    {\bfseries\fontsize{16}{16}\selectfont \@institution \par}
    \vspace{0.1cm}
    {\fontsize{13}{13}\selectfont \@school \par}
    \vspace{4cm}
    {\bfseries\fontsize{24}{30}\selectfont \@thesistitle \par} 
    \vspace{0.3cm}
    {\fontsize{16}{20}\selectfont \@thesissubtitle \par} 
    \vspace{0.1cm}
    {\bfseries\fontsize{22}{26}\selectfont DeltaV Drones \par} 
    \vfill
    {\bfseries\fontsize{13}{14}\selectfont \@locationdate \par}

\end{titlepage}
\restoregeometry
}