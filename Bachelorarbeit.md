---
lang: de
fontsize: 14pt
documenttype: Bachelorarbeit
studentid: 3225860
department: Elektro- und Informationstechnik
studyprogramme: Bachelor Elektro- und Informationstechnik
startingdate: 1.November 2088
closingdate: 28.März 2022
listings: true
lofTitle: Abbildungsverzeichnis
lotTitle: Tabellenverzeichnis
lolTitle: Codeverzeichnis
eqnPrefix: Gl.
tblPrefix: Tbl.
figPrefix: Abb.
figureTitle: Abbildung
tableTitle: Tabelle
listingTitle: Code
firstadvisor: Sabrina Jahn
link-citations: true
colorlinks: true
linkcolor: black
filecolor: black
urlcolor: blue
citecolor: blue
toc: true 
lof: false
lot: false
lol: false
numbersections: true
csl: templates/ieee.csl
makedeclaration: false
documentclass: OTHRartcl
title: Grundlagen IT Security
subtitle: Email an Kollegen
date: 27. März 2022
author: Simon Röhrl
references:
- author: Simon Röhrl
  id: test
  issued: 2013-05
  publisher: "<https://www.google.com>"
  title: This is how you cite a website in latex
---

# Grundlagen IT Security

Hallo zusammen,

im Folgenden will ich auf eure Fragen eingehen und einige Grundlagen erklären.

## Was ist IT-Security

Die IT-Security ist ein Unterbereich der Informationssicherheit. Hier geht es um den Schutz von elektronisch verarbeiteten Daten.

## Schutzziele
in der Informationssicherheit gibt es drei wichtige Schutzziele:

+ Vertraulichkeit
	- Der Zugriff auf Information wird beschränkt
	- Nur die Personen, die berechtigt sind sollten Zugang zu den Informationen bekommen oder diese bearbeiten können. Um dies zu gewährleisten, könnte beispielsweise Verschlüsselung verwendet werden.
+ Integrität
	- Dateiänderungen sollten nachvollziehbar sein
	- Wenn Änderungen vorgenommen werden, dann sollten diese keinesfalls unerkannt bleiben und die korrekte Funktionsweise des Systems sollte bestehen bleiben
+ Verfügbarkeit
	- Ein System sollte immer funktionieren
	- Ausfälle sollten vermieden werden
	- Es sollte eine Risikoanalyse durchgeführt werden, um die Systeme zu identifizieren, die essentiell für das Funktioneren des Unternehmens sind

Quellen/Referenzen:
[haufe.de](https://www.haufe.de/compliance/management-praxis/informationssicherheit/schutzziele-der-informationssicherheit_230130_483172.html)

## Begrifflichkeiten

+ Wert/Asset: Ein Asset ist ein Gerät oder Daten, welche wertvoll für eine Organisation sind. Beispiele:
	- Laptop, PC, Handy
	- IT Infrastruktur (z.B Server)
	- kritische Informationen
+ Bedrohung/Thread: Ein Thread ist eine Bedrohung für ein Asset. Diese Bedrohung könnte die Vertraulichkeit, Integrität oder Verfügbarkeit negativ beeinflussen
+ Vulnerability/Risiko/Schwachstelle: Eine Vulnerability ist ein Fehler, der ausgenutzt werden kann, um beispielsweise ein Asset zu bedrohen
+ Exploit/Angriff: Hier wird eine Schwachstelle konkret ausgenutzt
+ Gegenmaßnahmen: Maßnahmen, die Schwachstellen aufspüren und Angriffe verhindern

Quellen/Referenzen:
[vigilantsoftware.com](https://www.vigilantsoftware.co.uk/blog/risk-terminology-understanding-assets-threats-and-vulnerabilities)

## Hacker

Hacker sind technisch versierte Personen, die Schwachstellen aufspüren, um auf sie aufmerksam zu machen oder um diese für verschieden Zwecke auszunutzen. Man kann sie grob in unterschiedliche Gruppen einteilen

1. Black Hat Hackers: Diese Art von Hackern versucht illegalerweise in Systeme einzudringen. Sie haben böswillige Absichten und wollen beispielsweise wertvolle Daten stehlen, um diese für ihren eigenen Vorteil zu verwenden. Diese Daten können sie dann weiterverkaufen oder für eine Erpressung nutzen.
2. White Hat Hacker: Diese Hacker versuchen ihr Können für gute Zwecke einzusetzen. Der Unterschied zu den Black Hat Hackern ist hier, dass die Organisation, bei der Schwachstellen gefunden werden sollen, explizit die Zustimmung gegeben hat. Die Intention ist, dass Vulnerabilities auf diese gefunden werden können bevor sie ausgenutzt werden können.
3. Grey Hat Hacker: Dieser befindet sich zwischen den White und den Black Hats. Er verstößt hin und wieder gegen Gesetze verfolgt aber meist keine böse Absichten.

Quellen/Referenzen:
[kaspersky.com](https://www.kaspersky.com/resource-center/definitions/hacker-hat-types)

## Unterschied funktionale Sicherheit (Safety) und IT-Sicherheit (Security)

Bei der funktionalen Sicherheit geht es darum Mensch und die Umwelt vor Fehlfunktionen zu schützen. Es geht darum Maßnahmen einzuführen, die das Risiko mindern. Ein typisches Beispiel für die funktionale Sicherheit ist der Schutz von Menschen vor Anlagen in einer Produktionslinie.
Im Gegensatz zur funktionalen Sicherheit ist der Begriff der IT-Sicherheit relativ neu. Hier geht es weniger um eine physische Bedrohung sondern beispielsweise um den Schutz von Daten oder Assets.

Quellen/Referenzen:
[vde.com](https://www.vde.com/topics-de/funktionale-sicherheit)
[wikipedia.org](https://de.wikipedia.org/wiki/Funktionale_Sicherheit)