%
% Klasse zur Erstellung von Einladungen mit Tagesordnung (OTH Regensburg Design)
% Michael Niemetz 2015
%
\ProvidesClass{OTHR_Einladung}
%
\DeclareOption*{\PassOptionsToClass{useDepartmentLogo,\CurrentOption}{OTHRartcl}}
\ProcessOptions\relax
%
\LoadClass{OTHRartcl}
%
\RequirePackage{enumitem}
\RequirePackage{graphicx}
\RequirePackage{xspace}
%
\newcommand{\derTermin}{\today\xspace}
\newcommand{\derOrt}{\textbf{\textcolor{red}{!kein Ort definiert!}}\xspace}
\newcommand{\dieZeit}{\textbf{\textcolor{red}{!kein Zeitpunkt definiert!}}\xspace}
\newcommand{\dieUnterschrift}{}
\newcommand{\dasUnterschriftsbild}{\rule{0pt}{1.2cm}}
\newcommand{\theSignatureDate}{\today\xspace}
%
\newenvironment{einladung}{\makehead\noindent%
\vspace{6ex plus 12ex minus 3ex}%
\begin{center}
\Huge \bfseries Einladung
\end{center}}{%
\vspace{6ex plus 12ex minus 4ex}
Regensburg, den \theSignatureDate

\dasUnterschriftsbild\\
\dieUnterschrift

\vfill}

%
%
\newenvironment{tagesordnung}{\vspace{3ex plus 12ex minus 4ex}\section*{Tagesordnung}\begin{enumerate}[label=\textbf{TOP \arabic*},align=left,labelsep=2em, 
leftmargin=*,widest*=19]}{\end{enumerate}}
%
\newenvironment{unterpunkte}{\begin{itemize}[align=left,labelsep=.4em, leftmargin=*]}{\end{itemize}}
%
%
\newcommand{\termin}[1]{\renewcommand{\derTermin}{#1\xspace}}
\newcommand{\ort}[1]{\renewcommand{\derOrt}{#1\xspace}}
\newcommand{\zeit}[1]{\renewcommand{\dieZeit}{#1\xspace}}
\newcommand{\organ}[1]{\documenttype{#1}}
\renewcommand{\date}[1]{\renewcommand{\theSignatureDate}{#1}}
\newcommand{\unterschrift}[2][\rule{0pt}{1.2cm}]{%
\renewcommand{\dieUnterschrift}{#2\xspace}%
\renewcommand{\dasUnterschriftsbild}{#1\xspace}%
}
%
\pagestyle{empty}
%
%
%

