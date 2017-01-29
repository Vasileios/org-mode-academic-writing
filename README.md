# org-mode-academic-writing
notes about exporting, using dictionaries, etc

# Use dictionaries (Greek-English-German etc).

# Install Dictionaries -emacs

**Install aspell from brew**

    $ brew install aspell --with-lang-en --with-lang-el --with-lang-de

for English, Hellenic and Deutsch languages.

if you have problems installing aspell with the above code

just do only:

    $ brew install aspell

**Install aspell using downloaded packages aspell-0.60.6.1**

go to terminal and type:

    $ cd ~/aspell path
    $ ./configure
    $ make
    $ make install

To install additional dictionary download the language you prefer from  [GNU\_Available Aspell Dictionaries](ftp://ftp.gnu.org/gnu/aspell/dict/0index.html)

i.e `aspell-el-0.50-3` for Hellenic language (Greek)

and go to terminal and type:

    $ cd ~/dictionary path
    $ ./configure
    $ make
    $ install

**Switch dictionary**

To switch between dictionaries run:

M-x: `ispell-change-dictionary`

and write *greek* for Hellenic language auto-correct

Press F6 (fn-F6) to switch between dictionaries (british, greek, german)

If you want to use the english dictionary in a particular buffer instead,
put the following on the first line of the buffer:

`-*- ispell-dictionary: "english" -*-`

# Export in Greek Language

Put latex.el in your postload

Add these to your org file.

LaTeX_HEADER: \usepackage{minted}

latex_compiler: xelatex

LaTeX_HEADER: \usepackage{libertine}

Latex_Header: \usepackage[none]{hyphenat}

Latex_Header: \usepackage[british, greek]{babel}

\sloppy

