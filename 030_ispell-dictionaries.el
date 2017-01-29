;; ispell - set dictionaries

(setq ispell-list-command "--list")

;; set dictionaries in default use

(setq ispell-dictionary "british")
(setq ispell-dictionary "greek")
(setq ispell-dictionary "german")

;; Switch between dictionaries ispell

(let ((langs '("british" "greek" "german")))
  (setq lang-ring (make-ring (length langs)))
  (dolist (elem langs) (ring-insert lang-ring elem)))
(defun cycle-ispell-languages ()
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
(global-set-key [f6] 'cycle-ispell-languages)




(setenv "DICTIONARY" "en_GB")
(setenv "DICTIONARY" "el_GR")


;; flyspell popup
(require 'flyspell-correct-popup)
(define-key flyspell-mode-map (kbd "C-;") 'flyspell-correct-previous-word-generic)
