#### Table of contents

- [Bachelor/Master Thesis template with pandoc [OTH Regensburg]](#bachelormaster-thesis-template-with-pandoc-oth-regensburg)
  - [Introduction](#introduction)
  - [Requirements](#requirements)
  - [How to Compile](#how-to-compile)
- [If you use windows](#if-you-use-windows)

# Bachelor/Master Thesis template with pandoc [OTH Regensburg]

## Introduction

This is a template for a Bachelor/Master Thesis with markdown an pandoc &rarr; LaTeX.

We based this template on the template of [OTH Regensburg] and configured it
to work with the [pandoc] and [pandoc-crossref] packages in markdown so it is
easier to write the thesis.

## Requirements

If you use vscode go to [this repo by kahles17](https://github.com/kahles17/pandoc_oth)

**you need to download these package yourself:**
+ [pandoc]
+ [pandoc-crossref]
+ [LaTeX]

and creating an texmf folder in the home directory of the user with the
included OTH class and style/logos files.

or you can just run the makefile/install-script with the following command and it will take
care of everything (copying the necessary files):

```bash
    bash install.sh "or if you have make installed"
    make install
```

## How to Compile

```bash
    bash compile2pdf.sh BA_Thesis.md "or if you have make installed"
    make pdf
```
if you use vim/nvim you can use my [compiler
script](https://github.com/ayham291/dotfiles/blob/master/.local/bin/compiler)
for all sort of document types.

```bash
    curl -L https://raw.githubusercontent.com/ayham291/dotfiles/master/.local/bin/compiler > compiler
    mkdir -p ~/.local/bin
    cp compiler ~/.local/bin/
    chmod +x ~/.local/bin/compiler
```

to add it to your path put this in your .bashrc/.zshrc:

```bash
    export PATH="$HOME/.local/bin:$PATH"
```

add it to your vimrc/init.vim:

```vim
	map <leader>c :w! \| !compiler "<c-r>%"<CR>
```

for all of my dotfiles you can go to my [dotfiles
repo](https://github.com/ayham291/dotfiles/)

# If you use windows

*currently if you use windows you are out of luck here.*

try [kahles17](https://github.com/kahles17/pandoc_oth) version
