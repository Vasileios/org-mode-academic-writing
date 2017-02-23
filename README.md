# org-mode-academic-writing
notes about exporting, using dictionaries, etc

# Use dictionaries (Greek-English-German etc).

# Install Dictionaries -org-mode-emacs

**Install aspell using brew**

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


# Export references with org-mode

Use bibtex package for citation.

First put the bellow code in your ./emacs

    ;; Bibtex-latex export citation
    (setq org-latex-pdf-process
          '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))

Your next step is to create a .bib file with your citations and name it: `test-bib-refs`

i.e:

    @InProceedings{ alejandro_weinstein-proc-scipy-2016,
      author    = { {A}lejandro {W}einstein and {W}ael {E}l-{D}eredy and {S}téren {C}habert and {M}yriam {F}uentes },
      title     = { {F}itting {H}uman {D}ecision {M}aking {M}odels using {P}ython },
      booktitle = { {P}roceedings of the 15th {P}ython in {S}cience {C}onference },
      pages     = { 1 - 6 },
      year      = { 2016 },
      editor    = { {S}ebastian {B}enthall and {S}cott {R}ostrup }
    }

and then use these latex commands inside your org file

    #+LaTeX_HEADER: \usepackage[natbib]{biblatex}
    #+LATEX_HEADER: \bibliographystyle{plain}
    #+LATEX_HEADER: \bibliography{test-bib-refs}

# Tests

## Test1 slide

-   This is test1 \cite{alejandro_weinstein-proc-scipy-2016}.
-   This is test2 \cite{2011ApJS..192....9T}.

\*
\printbibliography

## Note

put `\printbibliography` at the end so as to print the references section last on your text.


