(defun my-haskell-mode-hook ()
  (local-set-key "\C-cl" 'hs-lint)
  (dolist (x '(haskell literate-haskell))
    (add-hook
     (intern (concat (symbol-name x)
                     "-mode-hook"))
     'turn-on-paredit)))

(eval-after-load 'haskell-mode
  '(progn
;;     (require 'flymake)
;;     (push '("\\.l?hs\\'" flymake-haskell-init) flymake-allowed-file-name-masks)
;;     (add-hook 'haskell-mode-hook 'flymake-haskell-enable)
     (add-hook 'haskell-mode-hook 'my-haskell-mode-hook)))
