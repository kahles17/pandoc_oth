---
lang: de
fontsize: 12pt
documenttype: Studienarbeit
studentid: 123456789
department: Elektro- und Informationstechnik
studyprogramme: Bachelor Elektro- und Informationstechnik
startingdate: 1.November 2088
closingdate: 11.Dezember 2089
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
firstadvisor: Prof. Dr. Paula Streng
secondadvisor: Prof. Dr. Petra Hart
externaladvisor: Dr. Klara Endlos
link-citations: true
colorlinks: true
linkcolor: black
filecolor: black
urlcolor: blue
citecolor: blue
toc: true
lof: true
lot: true
lol: true
numbersections: true
csl: templates/ieee.csl
makedeclaration: true
documentclass: OTHRartcl
title: Erster Titel
subtitle: Zweiter Titel
date: 29.Dezember 2021
author: Simon Röhrl
references:
- author: Simon Röhrl
  id: test
  issued: 2013-05
  publisher: "<https://www.google.com>"
  title: This is how you cite a website in latex
---

# Überschrift

## Unterüberschrift

+ lkjdf @test
	- Unterpunkt
		* Unterunterpunkt
	- Unterpunkt
+ aölskdjf
+ aösdlkf

Das ist eine Tabelle:

| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |

: Beispiel {#tbl:Beispiel}

$$ X_{i}^{2} + X_{i} + 2 $$

> Das ist eine Einrückung
![](oth.jpg){#fig:cfc width=10%}
Ein Bild:

![OTH](oth.jpg){#fig:OTH}

```{#lst:code .python caption="Python Code"}
from sympy import *
# Hallo Welt
"Dkkkkkkkkkkkkkkkt ein String"
for i in range(0,10)
  print(i)

def func():
  i = i+1
```

Suche auf [Google](https://www.google.com).

1. **Fett**

    1. Erster Unterpunkt
    2. Zweiter Unterpunkt

2. *Kursiv*
3. ~~Durchgestrichen~~
4. `typewriter`
5.  subscript~1~
6.  superscript^1^

## Mathematische Formel

Gerade 1:

$$ y = mx + b $$ {#eq:1}

Dies ist die @eq:1

Gerade 2:

$$ y = mx + b $$

Gerade 3:

$$ y = mx + b $$ {#eq:2}

Dies ist die @eq:2


Inline $F(x) = \int^a_b \frac{1}{3}x^3$ Gleichung

$$a^2 + b^2 = c^2$$

As says, ...

# Nächste Überschrift

Hier kommt man zur OTH [Abb. @fig:OTH]

# Referenzen

::: {#refs}
:::
