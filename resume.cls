% Resume LaTeX Class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}[2022/01/25 LaTeX Resume template]

\LoadClass[10pt, a4paper]{article}

\RequirePackage[T1]{fontenc}
\RequirePackage[margin=0.75in]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{enumitem}
\RequirePackage{tabularx}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontawesome}

% Page and Font Styling

% Contact Information
\newcommand{\name}{John Doe}
\newcommand{\phone}{(800)-800-8000}
\newcommand{\email}{johndoe@gmail.com}
\newcommand{\website}{johndoe.com}
\newcommand{\github}{john-doe}
\newcommand{\linkedin}{john-doe}

% Title
\renewcommand{\maketitle}{%
    \thispagestyle{plain}
    \begin{center}
        {\Huge\textbf{\name}} \\
        \vspace{1em}
        \raisebox{-0.1\height}\faPhone\ \href{tel:\phone}{\phone}
        \hspace{1em}
        \raisebox{-0.1\height}\faEnvelope\ \href{mailto:\email}{\email}
        \hspace{1em}
        \raisebox{-0.1\height}\faGlobe\ \href{https://\website/}{\website}
        \hspace{1em}
        \raisebox{-0.1\height}\faGithub\ \href{https://github.com/\github/}{\github}
        \hspace{1em}
        \raisebox{-0.1\height}\faLinkedinSquare\
        \href{https://linkedin.com/in/\linkedin/}{\linkedin}
    \end{center}
    \vspace{0.5em}
}

% Section
\providecommand{\section}{}
\renewcommand{\section}[1]{%
    \vspace{1em}
    \noindent{\large\textbf{#1}}
    \vspace{0.5em}
    \hrule
    \vspace{1em}
}

% Education
\providecommand{\education}{}{}{}
\renewcommand{\education}[3]{%
    \indent{\textbf{#1} \hspace{0.25em} \textit{#2} \hfill #3}
    \vspace{0.25em}
}

% Job
\providecommand{\job}{}{}{}{}
\renewcommand{\job}[4]{%
    \indent{\textbf{#1} \hspace{0.25em} \textit{#3} \hfill #4} \\
    \indent{#2}
}

% Project
\providecommand{\project}{}{}
\renewcommand{\project}[2]{%
    \indent{\textbf{#1} \hfill #2}
}

% Skill
\providecommand{\skill}{}{}
\renewcommand{\skill}[2]{%
    \indent{\textbf{#1} \hspace{1em} #2}
}
