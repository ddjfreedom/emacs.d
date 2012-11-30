(require 'unbound)
(require 'undo-tree)
(global-undo-tree-mode)

(require 'powerline)
(powerline-default)

(require 'guru-mode)
(guru-global-mode +1)

(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'misc-init)
