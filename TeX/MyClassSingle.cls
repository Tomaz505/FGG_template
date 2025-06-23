\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MyClassSingle}[2024/10/05 FGG porocilo]

\LoadClass[a4paper, 11pt]{article}

%   USEPACKAGE
\RequirePackage{pdfbase}[2017/03/16]
\RequirePackage{xparse,ocgbase}

\RequirePackage{xcolor,calc}
\RequirePackage{tikzpagenodes,linegoal}

\usetikzlibrary{calc}
\RequirePackage{tcolorbox}

\RequirePackage[colorlinks=true, allcolors = black]{hyperref}
%\hypersetup{,urlcolor=black ,citecolor=black ,linkcolor=black}

\RequirePackage{etex}
\RequirePackage{amsmath}

\RequirePackage{mathtools}
\RequirePackage{amssymb}

\RequirePackage[a4paper,top=3cm,bottom=2cm,left=3cm,headheight =21pt,right=2cm, marginparwidth = 0cm, marginparsep = 0cm]{geometry} % showframe,
\RequirePackage[slovene]{babel}

\RequirePackage{biblatex}
\RequirePackage[a-2u]{pdfx} 

\RequirePackage{fancyhdr}
\RequirePackage{tocloft}

\RequirePackage{titlesec}
\RequirePackage{attachfile}

\RequirePackage{tikz}
\RequirePackage{pgfplots} \pgfplotsset{compat=1.18} 

\RequirePackage[slovene]{babel}
\RequirePackage{tocloft}

\RequirePackage{titlesec}
\RequirePackage{caption}

\RequirePackage{subcaption}
\RequirePackage{biblatex}

\RequirePackage{pdfpages}




\addbibresource{Ref.bib}


\DeclareBibliographyDriver{book}{
  \usebibmacro{bibindex}
  \usebibmacro{begentry}
  \printnames{author}
  \setunit{\labelnamepunct}\newblock
\printfield{year}
    \newunit\newblock
\printfield{title}
  \newunit\newblock
  \printlist{publisher}
  \newunit\newblock
  \printfield{url}
  \newunit\newblock
  \printfield{note}
  \usebibmacro{finentry}}






%   COMMANDS






%   Naslov Poglavja
\titleformat{\section}{\normalfont\fontsize{11pt}{12pt}\selectfont\bfseries}{\thesection}{1em}{}

%   Naslov Podpoglavja
\titleformat{\subsection}{\normalfont\fontsize{11pt}{12pt}\selectfont\bfseries}{\thesubsection}{1em}{}

%   Naslov Podpodpoglavja
\titleformat{\subsubsection}{\normalfont\fontsize{11pt}{12pt}\selectfont\bfseries}{\thesubsubsection}{1em}{}

%   Oblika Glave in noge
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[R]{\footnotesize\thepage\\}
    \fancyhead[L]{\footnotesize \newauthor. \newtitle.\\\kraj, \newdate. \institucija. \doctype}}
\pagestyle{plain}

%   Naslov dodatka
\newcommand{\appendixsection}[1]{\setcounter{page}{1}\setcounter{equation}{0}\refstepcounter{section}\section*{PRILOGA~\thesection\hspace{5pt}\ #1}}
%\renewcommand{\section}[1]{\setcounter{equation}{0} \section{#1}}
%   Strani Dodatka
\newcommand{\appendixpagenumbering}{\break \pagenumbering{arabic} \renewcommand{\thepage}{\thesection.\arabic{page}}}

\let\caption\engcaption
\newcommand{\engcaption}[2]{\caption{#1}Figure \thefigure: {#2}}

\newcommand{\praznastran}{\newpage \begin{center} \textit{(Ta stran je namenoma prazna)} \end{center} \newpage}

\renewcommand{\theequation}{\arabic{section}.\arabic{equation}}



\makeatletter
\AtBeginDocument{\let\mathaccentV\AMS@mathaccentV \renewcommand\contentsname{}
\renewcommand\listfigurename{}}
\makeatother


\endinput