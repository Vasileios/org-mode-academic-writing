;; Org mode - ox-latex here
(require 'org)
(setq exec-path (append exec-path '("/usr/texbin")))
(require 'ox-latex)
(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))
(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass{article}"
               
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))

(add-to-list 'org-latex-packages-alist '("" "minted"))

(setq org-export-latex-listings 'minted)


(setq org-latex-listings 'minted)

(setq org-latex-custom-lang-environments
      '(
        (emacs-lisp "common-lispcode")
        ))
(setq org-latex-minted-options
      '(("frame" "lines")
        ("fontsize" "\\scriptsize")
        ("linenos" "")))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(add-hook 'LaTeX-mode-hook #'latex-extra-mode)

;; default packages for ordinary latex or pdflatex export
(setq org-export-latex-default-packages-alist
      '(("AUTO" "inputenc" t)
        ("T1"   "fontenc"   t)
        (""     "fixltx2e"  nil)
        (""     "wrapfig"   nil)
        (""     "soul"      t)
        (""     "textcomp"  t)
        (""     "marvosym"  t)
        (""     "wasysym"   t)
        (""     "latexsym"  t)
        (""     "amssymb"   t)
        (""     "hyperref"  nil)))


(require 'ac-math)
(add-to-list 'ac-modes 'latex-mode)
(defun ac-latex-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-latex ac-source-latex-commands  ac-source-math-unicode)
                ac-sources))
  )
(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)

(setq org-startup-indented t)


;; Latex export to pdf
(setq org-latex-pdf-process
      (list "xelatex -interaction nonstopmode -output-directory %o %f"
            "xelatex -interaction nonstopmode -output-directory %o %f"
            "xelatex -interaction nonstopmode -output-directory %o %f"))
