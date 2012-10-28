(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
(eval-after-load "tex"
  '(progn
     (add-to-list 'TeX-command-list
                  '("XeLaTeX" "%`xelatex%(mode) %S %' %t" TeX-run-TeX nil
                   t
                   :help "Run XeLaTeX"))
     (setq-default TeX-master nil)
     (setq TeX-auto-save           t
           TeX-parse-self          t
           reftex-plug-into-AUCTeX t
           TeX-view-program-list '(("Skim" "/Applications/Skim.app/Contents/SharedSupport/displayline %n %o %t"))
           TeX-global-PDF-mode     t
           TeX-source-correlate-method 'synctex)
     (setcdr (assoc 'output-pdf TeX-view-program-selection)
             '("Skim"))))
(eval-after-load "latex"
  '(progn
     (setq LaTeX-fold-env-spec-list  (append '(("[lstlisting]" ("lstlisting"))
                                               ("[enumerate]"  ("enumerate"))
                                               ("[figure]"     ("figure")))
                                             LaTeX-fold-env-spec-list))))
(add-hook 'LaTeX-mode-hook (lambda ()
                             (setq TeX-command-default "XeLaTeX")
                             (outline-minor-mode 1)))
(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(add-hook 'LaTeX-mode-hook 'TeX-fold-mode)
(add-hook 'LaTeX-mode-hook 'turn-off-auto-fill)
(add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
