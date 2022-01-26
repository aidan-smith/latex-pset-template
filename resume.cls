% Resume LaTeX Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/01/25 LaTeX Resume template]

\LoadClass[10pt, a4paper]{article}

\RequirePackage[margin=1in]{geometry}
\RequirePackage{fancyhdr}

% Page and Font Styling

% Contact Information
\newcommand{\name}{Aidan Smith}
\newcommand{\phone}{(412)-701-8365}
\newcommand{\email}{aidan5525@gmail.com}
\newcommand{\website}{aidansmith.me}
\newcommand{\github}{github.com/aidan-smith}
\newcommand{\linkedin}{linkedin.com/in/aidan-d-smith}

% Title
\renewcommand{\maketitle{%
    \thispagestyle{plain}
    \begin{center}
        {\Huge\textbf{\name}} \\
        \phone | \email | \github | \linkedin
    \end{center}
    \vspace{1em}
}

% Section
\providecommand{\section}{}
\renewcommand{\section}[1]{%
    \noindent{\large\textbf{#1}}
    \vspace{0.25em}
    \hrule
    \vspace{0.5em}
}

% Education
\providecommand{\education}{}{}{}
\renewcommand{\education}{[3]{%
    \textbf{#1} \hspace{1em} \textit{#2} \hspace*{\fill} #3
    \vspace{0.25em}
}

% Job
\providecommand{\job}{}{}{}{}
\renewcommand{\job}[4]{%
    \textbf{#1} \hspace{1em} \textit{#3} \hspace*{\fill} #4 \\
    \textit{#2}
    \vspace{0.25em}
}

% Project
\providecommand{\project}{}{}
\renewcommand{\project}[2]{%
    \textbf{#1} \hspace*{\fill} #2
    \vspace{0.25em}
}

% Skill
\providecommand{\skill}{}{}
\renewcommand{\skill}[2]{%
    \textbf{#1} \hspace{1em} #2
}
