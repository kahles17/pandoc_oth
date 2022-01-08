%
% Author: Michael Niemetz 2016
%
%
\ProvidesClass{OTHRstgprfl}
\RequirePackage[utf8]{inputenc}
\RequirePackage{xkeyval}
\newcommand{\iSAversioncode}{2015}
\DeclareOptionX{iSAversion}[2015]{\renewcommand{\iSAversioncode}{#1}}
%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{OTHRartcl}}
%
%
\ProcessOptions\relax
\ProcessOptionsX\relax
%
\LoadClass{OTHRartcl}
%
%
\RequirePackage{tabularx}
\RequirePackage{xifthen}
\RequirePackage{scrpage2}
\PassOptionsToPackage{ngerman}{babel}
\RequirePackage{babel}
\RequirePackage{anyfontsize}
\RequirePackage{colortbl}
%
\pagestyle{scrheadings}
%
%\newcommand{\ifequals}[3]{\protect\ifthenelse{\equal{#1}{#2}}{#3}{}}
%\newcommand{\case}[2]{#1 #2}
%\newenvironment{switch}[1]{\renewcommand{\case}{\ifequals{#1}}}{}
%
\newlength{\@topicitemwidth}
\settowidth{\@topicitemwidth}{999\hspace{.85em}}
\newlength{\@topicitemtocwidth}
\settowidth{\@topicitemtocwidth}{999m}
\shorthandon{"}%
\input{OTHRstgprfl\iSAversioncode.stgpc}
%\newcommand{\qtopictext}[1]{%
%  \stringcases
%    {#1}%
%    {%
%{101}{Die angestrebten Lernergebnisse des Studiengangs stehen im Einklang mit dem Ausbildungsprofil der OTH Regensburg (gem. der Beschreibung zum Ausbildungsprofil und dem Qualitätsanspruch und dem und Leitbild der Hochschule).}
%{102}{Studiengangbezeichnung, Abschlussgrad und Qualifikationsvoraussetzungen stehen in Einklang mit den Ausbildungszielen sowie mit staatlichen Vorgaben.}
%{103}{Studienstruktur (Voll- oder Teilzeit) und Studiendauer berücksichtigen Ausbildungsziel und Zielgruppe.}
%{104}{Studentische Lehrveranstaltungsevaluation: Die Qualität der Lehrveranstaltungen wird regelmäßig nach dokumentiertem Verfahren durch die Studierenden beurteilt. Die Studierenden werden bei der Weiterentwicklung des Studienprogramms gehört.}
%{105}{Das Studienkonzept berücksichtigt die Geschlechtergerechtigkeit und die Belange von Studierenden in unterschiedlichen Le\-bens\-la\-gen.}
%{106}{Studienbewerber und Studienbewerberinnen sowie Studierende haben ein niederschwelliges Angebot zu Studienfachberatung und werden regelmäßig über ihren Studiengang (Studienaufbau, Regeln zu Studienfortschritt und Prüfungen, Wahlmöglichkeiten) informiert.}
%{201}{Studiengangbezeichnung, Abschlussgrad, Studienstruktur und Qualifikationsvoraussetzungen stehen in Einklang mit den Ausbildungszielen sowie mit staatlichen Vorgaben.}
%{202}{Der Studiengang befähigt zum wissenschaftlichen Arbeiten; Forschungs"= und Entwicklungsaktivitäten werden auf systematische Weise in Studium und Lehre integriert.}
%{203}{Der Studiengang befähigt zum gesellschaftlichen Engagement und fördert die Persönlichkeitsentwicklung.}
%{204}{Modularisierung im Detail: Modulgrößen, Modulbeschreibungen und Work"-load"=Angaben
%(Modulkatalog) sind inhaltlich stimmig und werden regelmäßig aktualisiert.}
%{205}{Lehrveranstaltungen: Adäquate Lehrformen und Prüfungsformen sind festgelegt.}
%{206}{Prüfungswesen: Anzahl, Art und Umfang der Prüfungen pro Modul sind sachgerecht,
%transparent und lernergebnisorientiert.}
%{207}{Die Qualität der Lehrmodule bei kooperativen, internationalen Studienprogrammen (auch Joint"=Programms und Double"=Degree"=Programms) ist bei den Partnerhochschulen sichergestellt.}
%{301}{Studierbarkeit: Die Studien"= und Prüfungsorganisation ermöglicht den Abschluss des Studiums in der Regelstudienzeit.}
%{302}{Studienstruktur (Voll"= oder Teilzeit), Studiendauer, Studienform und Lehrveranstaltungstermine berücksichtigen Ausbildungsziel und Zielgruppe.}
%{303}{Das Studienprogramm berücksichtigt die hochschulinternen Vorgaben und Ziele im Bereich der Internationalisierung und beinhaltet ein Konzept zur Förderung der Mobilität der Studierenden.}
%{304}{Die Beschreibung der angestrebten Lernergebnisse des Studiengangs sind für die Lehrenden, die Studierenden und Bewerber und Bewerberinnen gut zugänglich.}
%{305}{Die Studienpläne mit Detailangaben zu den Modulen liegen vor und sind leicht zugänglich.}
%{306}{QM"=relevante Unterlagen zu den Studienprogrammen (Lehrberichte, Studiengangkommissionsprotokolle, statistische Daten) sind aktuell und vorhanden.}
%{307}{Ressourcen und Aufnahmekapazität: Personal und Räume stehen ausreichend zur Verfügung.}
%{308}{Lehrende werden zur fachlichen und/oder didaktischen Weiterbildung angeregt; Lehrbeauftragte verfügen über die notwendige Qualifikation.}
%{309}{Kooperative Studiengänge: Verträge sind vorhanden, rechtlich überprüft und gültig, Transparenz für Studierende und Lehrende ist gegeben.}
%}%
%{nada}%
%}%
%
%
\newcommand{\stringcases}[3]{%
  \romannumeral
    \str@case{#1}#2{#1}{#3}\q@stop
}%
%
\newcommand{\str@case}[3]{%
  \ifnum\pdf@strcmp{\unexpanded{#1}}{\unexpanded{#2}}=\z@
    \expandafter\@firstoftwo
  \else
    \expandafter\@secondoftwo
  \fi
    {\str@case@end{#3}}
    {\str@case{#1}}%
}%
%    
\newcommand{\str@case@end}{}
\long\def\str@case@end#1#2\q@stop{\z@#1}%
%
\newcommand{\qtopic}[1]{%
%
\addcontentsline{toc}{subsection}{\protect\parbox[t]{\@topicitemtocwidth}{#1}\qtopictext{#1}}%
%\addcontents{toc}{\parbox{\@topicitemwidth}{#1}\protect\qtopictext{#1}}
%
\nopagebreak\@nobreaktrue\vspace{1ex}%\par\noindent\vspace{1.5ex plus 22ex minus 1ex}\par\noindent%
{\color{white}\renewcommand{\arraystretch}{1.2}%
\begin{tabularx}{\linewidth}{@{}p{\@topicitemwidth}@{}X@{}}
\rowcolor{OTHR}#1 & \qtopictext{#1}
\end{tabularx}\label{Qtopic#1}}\par%
%\vspace{0ex plus 1ex minus 1ex}\par%
\nopagebreak\@nobreaktrue%
}
%
\ofoot[]{\small\upshape\textcolor{Accent}{ S e i t e | }\bfseries\pagemark}%
\renewcommand*{\pnumfont}{%
\normalfont\bfseries\upshape}%
\cfoot[]{}%
\ifoot[]{\small\upshape\@programmeType studiengang \@programmeName}%
%
% Variables to be set by the user (Dummy values)
%
\newcommand{\@programmeType}{\textcolor{red}{Bachelor}}
\newcommand{\@programmeName}{\textcolor{red}{Regenerative Energietechnik und Energieeffizienz}}
\newcommand{\@departmentName}{\textcolor{red}{Fakultät Elektro- und Informationstechnik}}
\newcommand{\@programmeAbbrev}{REE}
\newcommand{\@stand}{\textcolor{red}{Wintersemester 2016/17}}
\newcommand{\@zustand}{\today}
\newcommand{\@authors}{\textcolor{red}{Prof. Dr. Paula Streng\role{Studiengangsleitung und Vorsitzende der Studiengangskommission} \and Prof. Dr. Fritz Fies\role{Studienfachberater} \and Peter Schnellstift\role{Fakultätsreferent}}}%
\newcommand{\@supporters}{\textcolor{red}{Prof. Dr. Amanda Kraft\role{Dekanin} \and Prof. Dr. Caspar Melchior\role{Studiendekan} \and Hochschulleitung}}%
%
\newcommand{\role}[1]{, #1 }
%
\renewcommand{\maketitle}{%
\thispagestyle{empty}\enlargethispage{0.05\paperheight}%
\noindent\OfficialLogoNormal\par\vspace*{\fill}%
\noindent {\fontsize{28}{34}\selectfont Kurzprofil}\par \vspace{4ex}%
\noindent des \@programmeType studiengangs \par \noindent %
{\flushleft\fontsize{20}{24}\selectfont\bfseries\@programmeName{} (\@programmeAbbrev) \par}\vspace{4ex}\noindent %
an der Ostbayerischen Technischen Hochschule Regensburg,\\
\noindent \@departmentName \par
\vspace*{\fill}
\noindent Stand: \@stand\par\vspace{3ex plus 5ex minus 2ex}
\noindent Bearbeitungsstand: \@zustand\par\vspace{10ex plus 10ex minus 5 ex}
\noindent \textbf{Erstellung:}

\begin{itemize}\renewcommand{\and}{\item}\setlength{\parskip}{.3ex}
\item \@authors
\end{itemize}
\par\vspace{2ex plus 2ex minus 1 ex}
\noindent \textbf{In Zusammenarbeit mit:}

\begin{itemize}\renewcommand{\and}{\item}\setlength{\parskip}{.3ex}
\item \@supporters
\end{itemize}

\cleardoublepage
}%
%
%User Commands
%
\newcommand{\programmeType}[1]{\renewcommand{\@programmeType}{#1}}%
\newcommand{\programmeName}[1]{\renewcommand{\@programmeName}{#1}}%
\newcommand{\departmentName}[1]{\renewcommand{\@departmentName}{#1}}%
\newcommand{\programmeAbbrev}[1]{\renewcommand{\@programmeAbbrev}{#1}}%
\newcommand{\definitionSemester}[1]{\renewcommand{\@stand}{#1}}%
\newcommand{\lastModified}[1]{\renewcommand{\@zustand}{#1}}%
\newcommand{\authors}[1]{\renewcommand{\@authors}{#1}}%
\newcommand{\supporters}[1]{\renewcommand{\@supporters}{#1}}%
%
%

