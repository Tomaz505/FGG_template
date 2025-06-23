\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{MyClassDouble}[2024/10/05 FGG porocilo]

\LoadClass[a4paper, 11pt,twoside]{article}

%   USEPACKAGE
\RequirePackage{pdfbase}[2017/03/16]
\RequirePackage{xparse,ocgbase}

\RequirePackage{xcolor,calc}
\RequirePackage{tikzpagenodes,linegoal}

\usetikzlibrary{calc}
\RequirePackage{tcolorbox}


\RequirePackage{etex}
\RequirePackage{amsmath}

\RequirePackage{mathtools}
\RequirePackage{amssymb}

\RequirePackage[a4paper,top=3cm,bottom=2cm,headheight = 21pt,left=3cm,right=2cm, marginparwidth = 0cm, marginparsep = 0cm]{geometry}\RequirePackage[slovene]{babel} % showframe
\RequirePackage[colorlinks=true, allcolors = black]{hyperref}
%\hypersetup{,urlcolor=black ,citecolor=black ,linkcolor=black}


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

\RequirePackage[backend=biber, style=numeric]{biblatex}
\RequirePackage{csquotes}

\RequirePackage{pdfpages}
\RequirePackage{subcaption}










\DeclareBibliographyDriver{book}{
    \usebibmacro{begentry}
    \usebibmacro{bibindex}
    \printnames{author}
    \setunit{\labelnamepunct}%\newblock
    \printfield{year}
    \newunit%\newblock
    \printfield{title}
    \newunit%\newblock
    \printlist{publisher}
    \newunit\newblock
    \printfield{url}
    \newunit%\newblock
    \printfield{note}
    \usebibmacro{finentry}
}





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
    \fancyhead[LE,RO]{\footnotesize\thepage\\}
    \fancyhead[LO,RE]{\footnotesize \newauthor. \newdate. \newtitle.\\Ljubljana, UL FGG, Delo}}
\pagestyle{plain}

%   Naslov dodatka
\newcommand{\appendixsection}[1]{\setcounter{page}{1}\refstepcounter{section}\section*{PRILOGA~\thesection\hspace{5pt}\ #1}}

%   Strani Dodatka
\newcommand{\appendixpagenumbering}{\break \pagenumbering{arabic} \renewcommand{\thepage}{\thesection.\arabic{page}}}

\let\caption\engcaption
\newcommand{\engcaption}[2]{
    \caption{#1}Figure \thefigure: {#2}
    \addcontentsline{lof}{figure}{\hspace{9mm}#2}
}

\let\caption\tablecaption
\newcommand{\tablecaption}[2]{
    \caption{#1}Table \thetable: {#2}
    \addcontentsline{lot}{table}{\hspace{9mm}#2}
}

%\newcounter{thetable}
%\newcommand{\tablecaption}[2]{Tabela \thetable: {#1}\\Table \thetable: {#2} \thetable\addcontentsline{lot}{table}{\hspace{9mm}#1} \\ \addcontentsline{lot}{table}{\hspace{9mm}#2}\addtocounter{thetable}{1}}

\newcommand{\praznastran}{\newpage \begin{center} \textit{(Ta stran je namenoma prazna)} \end{center} \newpage}


\makeatletter
\AtBeginDocument{\let\mathaccentV\AMS@mathaccentV \renewcommand\contentsname{}
\renewcommand\listfigurename{}\renewcommand{\listtablename}{}}
\makeatother


\endinput