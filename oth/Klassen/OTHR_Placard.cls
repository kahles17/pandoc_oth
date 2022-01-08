%
% Klasse zur Erstellung von Plakaten 
% im OTH Regensburg Design
% Michael Niemetz 2019
%
\ProvidesClass{OTHR_Placard}

\DeclareOption*{\PassOptionsToClass{
useDepartmentLogo,
DIV=25,
fontsize=16pt,
paper=a4,
\CurrentOption}{OTHRartcl}}
\ProcessOptions\relax
%
\LoadClass{OTHRartcl}
%
\RequirePackage{soul}
\sodef\so{}{.14em}{.4em plus.1em minus .1em}{.4em plus.1em minus .1em}
\RequirePackage[pages=all,contents={}]{background}
%
\pagecolor{OTHRgrau}

\pagestyle{empty}
\newlength{\psectionskip}
\newlength{\psectionheadsep}
\setlength{\psectionskip}{.9cm}
\setlength{\psectionheadsep}{1ex}
%
\newenvironment{placard}{
\newlength{\logowidth}
\newlength{\logoheight}
\newlength{\textboxwidth}
%\setlength{\logowidth}{.66\textwidth}
%\settoheight{\logoheight}{\logoFlexible[width=\logowidth]}
\setlength{\logoheight}{4.25cm}
\settowidth{\logowidth}{\logoFlexible[height=\logoheight]}
\setlength{\textboxwidth}{\textwidth}
\addtolength{\textboxwidth}{-42.3mm}
\addtolength{\textboxwidth}{-2em}
\addtolength{\textboxwidth}{-3\fboxsep}
\cleardoublepage
\newsavebox{\content}
\begin{lrbox}{\content}%
\begin{minipage}[t]{\textboxwidth}%128.80mm}%
\color{AccentContrastColor}%
%\vspace{1ex}
}%
{\end{minipage}\end{lrbox}%
\unitlength 1mm%
\begin{picture}(0,40)%
\put(42.3,-5){\setlength{\fboxsep}{1em}\fcolorbox{Accent}{Accent}{
\usebox{\content}
}}
\put(0,0){\color{white}\rule{\textwidth}{.998\logoheight}}
\put(0,0){\logoFlexible[width=\logowidth]}
\end{picture}
}
\newenvironment{psection}[1]{\par\normalsize\expandafter\MakeUppercase\expandafter{\so{#1}}\par\vspace{\psectionheadsep}\raggedright\Large}{\par\vspace{\psectionskip}}
\newcommand{\setbackground}[1]{%
\backgroundsetup{
scale=1,
%color=black,
opacity=1,
angle=0,
contents={%
  \includegraphics[width=\paperwidth,height=\paperheight]{#1}
  }%
}}
