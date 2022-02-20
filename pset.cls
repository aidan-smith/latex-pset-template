% Problem Set LaTeX Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pset}[2021/09/03 LaTeX problem set template]

\LoadClassWithOptions{article}

\newcommand\@opnewpage{0}
\DeclareOption{newpage}{\renewcommand\@opnewpage{1}}
\ProcessOptions

\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsthm}
\RequirePackage{mathtools}

\RequirePackage{algorithm}
\RequirePackage[noend]{algpseudocode}

\RequirePackage{listings}
\lstset{
    basicstyle=\ttfamily,
    frame=lines,
    numbers=left,
    numberstyle=\tiny,
    mathescape = true,
}

\RequirePackage{xcolor}
\RequirePackage{graphicx}

\RequirePackage{fancyhdr}
\RequirePackage{enumerate}

\RequirePackage{ifthen}
\RequirePackage{suffix}

% Information
\newcommand{\name}{Aidan Smith}
\newcommand{\andrewid}{adsmith2}
\newcommand{\course}{XX-XXX}
\renewcommand{\section}{A}
\newcommand{\pset}{0}

\oddsidemargin0cm
\topmargin-2cm
\textwidth16.5cm
\textheight23.5cm

\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt plus 1pt}

% Page Header
\pagestyle{fancy}
\lhead{\textbf{Problem~Set~\pset}}
\chead{\course}
\rhead{\name\linebreak\andrewid}

% Title
\renewcommand{\maketitle}{%
    \thispagestyle{plain}
    \begin{center}
        {\Large\textbf{\course~Problem~Set~\pset}} \\
        \name \\
        \andrewid \\
        \course~Section~\section
    \end{center}
    \vspace{1em}
    \hrule
    \vspace{1em}
}

% Problem Headers
\newcounter{problem}

% Generic Problem
\providecommand{\problem}{}
\renewcommand{\problem}[0]{%
    \stepcounter{problem}
    \ifthenelse{\value{problem}=1}{}{%
        \ifthenelse{\@opnewpage=1}{\clearpage}{\vspace{1em}}
    }
    \noindent{\textbf{Problem~\arabic{problem}.}}
    \vspace{0.5em}
    \hrule
    \vspace{0.75em}
}

% Named Problem
\WithSuffix\providecommand\problem*{}
\WithSuffix\renewcommand\problem*[1]{%
    \stepcounter{problem}
    \ifthenelse{\value{problem}=1}{}{%
        \ifthenelse{\@opnewpage=1}{\clearpage}{\vspace{1em}}
    }
    \noindent{\textbf{\arabic{problem}. #1}}
    \vspace{0.5em}
    \hrule
    \vspace{0.75em}
}

% Induction Macros
\newcounter{case}
\AtBeginEnvironment{proof}{\setcounter{case}{0}}

\newcommand{\bcs}[1]{\textit{Base Case ($#1$):}}
\newcommand{\is}{\textit{Inductive Step: }}
\newcommand{\case}{%
    \stepcounter{case}
    \textbf{Case \arabic{case}.}
}

% Math Macros
\theoremstyle{plain}
\newtheorem{thm}{Theorem}[problem]
\newtheorem{lem}[thm]{Lemma}
\newtheorem{prop}[thm]{Proposition}
\newtheorem*{claim}{Claim}
\newtheorem*{cor}{Corollary}

\newcommand{\abs}[1]{\left\lvert #1 \right\rvert}
\newcommand{\enc}[1]{\left\langle #1 \right\rangle}

\renewcommand{\P}[1]{\mathbf{P}\left\{#1\right\}}
\newcommand{\E}[1]{\mathbf{E}\left[#1\right]}
\newcommand{\Var}[1]{\mathbf{Var}\left(#1\right)}

\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\R}{\mathbb{R}}
\newcommand{\Q}{\mathbb{Q}}
\newcommand{\C}{\mathbb{C}}
\newcommand{\F}{\mathbb{F}}

\newcommand{\J}{\mathcal{J}}
\newcommand{\G}{\mathcal{G}}

\newcommand{\ba}{\mathbf{a}}
\newcommand{\bb}{\mathbf{b}}
\newcommand{\bc}{\mathbf{c}}
\newcommand{\be}{\mathbf{e}}
\newcommand{\bu}{\mathbf{u}}
\newcommand{\bv}{\mathbf{v}}
\newcommand{\bw}{\mathbf{w}}
\newcommand{\bx}{\mathbf{x}}
\newcommand{\by}{\mathbf{y}}
\newcommand{\bz}{\mathbf{z}}
\newcommand{\bzero}{\mathbf{0}}
