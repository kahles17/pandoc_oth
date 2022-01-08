%
% Klasse zur Erstellung von Protokollen für Entscheidungsgremien 
% im OTH Regensburg Design
% Michael Niemetz 2016
%
\ProvidesClass{OTHR_Protokoll}

\DeclareOption*{\PassOptionsToClass{useDepartmentLogo,\CurrentOption, numbers=noenddot}{OTHRartcl}}
\ProcessOptions\relax
%
\LoadClass{OTHRartcl}
%
\RequirePackage{latexsym}
\RequirePackage{enumitem}
\RequirePackage{xspace}
\RequirePackage{tabularx}
\RequirePackage[hidelinks]{hyperref}
%
\def\verfassersignatur#1{\def\min@verfassersignatur{#1}}%legacy
\def\minutetakersignature#1{\def\min@verfassersignatur{#1}}
\def\dekansignatur#1{\def\min@dekansignatur{#1}}%legacy
\def\moderatorsignature#1{\def\min@dekansignatur{#1}}
\def\signaturedate#1{\def\min@signaturedate{#1}}
\def\subtitle#1{\def\min@subtitle{#1}}
\def\moderation#1#2{\def\min@moderation{#2}\def\min@moderationdescription{#1}}%legacy
\def\moderator#1#2{\def\min@moderation{#2}\def\min@moderationdescription{#1}}
\def\minutetaker#1#2{\def\min@minutetaker{#2}\def\min@minutetakedescription{#1}}
\def\cc#1{\def\min@cc{#1}}
\def\minutesdate#1{\gdef\min@date{#1}}
\def\starttime#1{\def\min@starttime{#1}}
\def\endtime#1{\def\min@endtime{#1}}
\def\location#1{\def\min@location{#1}}
\def\participant#1{\def\min@participiant{#1}}
\def\guest#1{\def\min@guest{#1}}
\newcommand{\missing}[2][\min@empty]{
\ifx#1\min@empty\def\min@missing{#2}
\else
\missingExcused{#1}
\missingNoExcuse{#2}
\fi
}
\def\missingExcused#1{\def\min@missingExc{#1}}
\def\missingNoExcuse#1{\def\min@missingNoExc{#1}}
\def\topic#1{\section{#1}}
\def\minitopic#1{\paragraph{#1}\mbox{}}
\def\schedule#1#2{\min@writedate#1/:\quad #2}

%
% Setzen von Stimmübertragungen
\newcommand{\stimmuebertrag}[1]{($\mapsto$ #1)}%legacy
\newcommand{\delegation}[1]{($\mapsto$ #1)}
\newcommand{\stimmuebertragext}[1]{$\mapsto$ #1)}%legacy
\newcommand{\delegationext}[1]{$\mapsto$ #1)}
%
% Box fuer Unterschriften
\newlength{\signatureboxwidth}
\newcommand{\signaturebox}[3][\rule{0pt}{1.5cm}\hrulefill]{\settowidth{\signatureboxwidth}{#2}\addtolength{\signatureboxwidth}{2em}\vspace*{1cm plus 4ex minus 4ex}\parbox{\signatureboxwidth}{#1\newline\hspace*{1em}#2\newline\hspace*{1em}#3}}
%
% Überschriftformatierung
\gdef\thesection{TOP\,\arabic{section}}
%
% Datumsausgabe
\def\min@writedate#1/#2/#3/{
\day=#3
\month=#2
\year=#1
\today
}
%
\newenvironment{Minutes}[2]{\documenttype{#2}\makehead\title{#2}%
\vspace{4ex plus 12ex minus 2ex}

\begin{center}
\Huge \bfseries #1
\end{center}
% Datentabelle setzen
\vspace{2ex plus 12ex minus 1ex}
\begin{description}
\ifdefempty{\min@moderation}{}{\item[Moderation] \min@moderationdescription{} \min@moderation}
\ifdefempty{\min@moderation}{}{\item[\min@minutetakedescription] \min@minutetaker}
\item[Anwesend] \min@participiant
\item[Abwesend (entschuldigt)] \min@missingExc
\item[Abwesend (unentschuldigt)] \min@missingNoExc
\item[G\"aste] \min@guest
\item[Sitzungsort] \min@location
\item[Datum] \min@date, \min@starttime--\min@endtime
\end{description}
\vspace{4ex plus 12ex minus 2ex}
}{%
\vspace{4ex plus 12ex minus 2ex}

Regensburg, den \min@signaturedate

\ifdefempty{\min@moderation}{}{
\signaturebox[\min@dekansignatur]{\min@moderation
}{\min@moderationdescription}}\hfill
\ifdefempty{\min@minutetaker}{}{\signaturebox[\min@verfassersignatur]{\min@minutetaker}{\min@minutetakedescription}}

\vfill}
%
\newenvironment{Argumentation}{\begin{itemize}}{\end{itemize}}%legacy
\newenvironment{discussion}{\begin{itemize}}{\end{itemize}}
\newcommand{\pro}{\item[\textcircled{+}]}
\newcommand{\Pro}{\item[\textbf{\textcircled{+}}]}
\newcommand{\contra}{\item[\textcircled{--}]}
\newcommand{\Contra}{\item[\textbf{\textcircled{--}}]}
\newcommand{\result}{\item[$\Rightarrow$]}
\newenvironment{Opinions}{\begin{description}}{\end{description}}%legacy
\newenvironment{opinions}{\begin{description}}{\end{description}}
\newcommand{\opinion}[2]{\textsc{#1:} #2}
\newenvironment{Beschluss}{\paragraph{Beschluss:}}{}%legacy
\newenvironment{decision}{\paragraph{Beschluss:}}{}
%
\newcommand{\qvote}[3]{\begin{center}\emph{Abstimmung:} Ja #1, Nein #2, Enthaltungen #3\end{center}}
%
\newcommand{\bvote}[4]{\begin{center}\emph{Abstimmung:}\\[.5ex]\begin{tabularx}{.8\linewidth}{p{4cm}X}
Ja: #2 \newline Nein: #3 \newline Enthaltungen: #4 & #1 \\
\end{tabularx}\end{center}}
%
\newenvironment{optionvote}{\begin{center}\emph{Abstimmung:}\\[.5ex]\begin{minipage}{.8\linewidth}\begin{description}\setlength{\parskip}{0pt}\setlength{\itemsep}{0pt}}{\end{description}\end{minipage}\end{center}}
\newcommand{\ovote}[2]{\item[#2]#1}
%
\pagestyle{plain}
%
% Default values
%
\def\min@verfassersignatur{\rule{0pt}{1.5cm}\hrulefill}
\def\min@dekansignatur{\rule{0pt}{1.5cm}\hrulefill}
\def\min@signaturedate{\today}
\def\min@subtitle{}
\def\min@moderation{}
\def\min@moderationdescription{}
\def\min@minutetaker{}
\def\min@minutetakedescription{}
\def\min@cc{}
\def\min@date{}
\def\min@starttime{}
\def\min@endtime{}
\def\min@location{}
\def\min@participiant{}
\def\min@guest{}
\def\min@missingExc{}
\def\min@missingNoExc{}
\def\min@missing{}

