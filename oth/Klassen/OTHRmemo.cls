%
%
%
\ProvidesClass{OTHRmemo}
%
\DeclareOption*{\PassOptionsToClass{useDepartmentLogo,\CurrentOption}{OTHRartcl}}
\ProcessOptions\relax
%
\LoadClass{OTHRartcl}
\RequirePackage{tabularx}
%
%\useDepartmentLogo%
\newcommand{\TheTos}{}
\newcommand{\TheFrom}{}
\newcommand{\TheCCs}{}
\newcommand{\TheSubject}{}
\newcommand{\TheDate}{\today}
%
\documenttype{Memo}
%
\author{}
\renewcommand{\to}[1]{\renewcommand{\TheTos}{#1}}
\newcommand{\To}[1]{\renewcommand{\TheTos}{#1}}
\newcommand{\from}[1]{\author{#1}}
\newcommand{\From}[1]{\author{#1}}
\newcommand{\cc}[1]{\renewcommand{\TheCCs}{#1}}
\newcommand{\CC}[1]{\renewcommand{\TheCCs}{#1}}
\renewcommand{\subject}[1]{\renewcommand{\TheSubject}{#1}}
\newcommand{\Subject}[1]{\renewcommand{\TheSubject}{#1}}
\renewcommand{\date}[1]{\renewcommand{\TheDate}{#1}}
%
\renewcommand{\maketitle}{\makehead\par\noindent
{\renewcommand{\arraystretch}{1.5}\sloppy
\begin{tabularx}{\textwidth}{@{}lX@{}}
\ifdefempty{\TheTos}{}{\bfseries An: & \TheTos \\}
\ifdefempty{\TheCCs}{}{\bfseries Kopie: & \TheCCs \\}
\ifdefempty{\@author}{}{\bfseries Von: & \@author\\}
\ifdefempty{\TheSubject}{}{\bfseries Betreff: & \TheSubject \\}
\ifdefempty{\TheDate}{}{\bfseries Datum: & \TheDate \\}
\end{tabularx}}

\vspace{5mm plus 1 cm minus 2mm}

\hrule

\vspace{5mm plus 1 cm minus 2mm}}
%
\newcommand{\makememohead}{\maketitle}
%

