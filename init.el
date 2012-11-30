;; set PATH
(if (not (getenv "TERM_PROGRAM"))
    (setenv "PATH"
            (shell-command-to-string "source $HOME/.zshrc && printf $PATH")))

(server-start)
(setq mac-function-modifier 'hyper)

(add-to-list 'load-path (concat user-emacs-directory user-login-name))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-elpa-packages
  '(ace-jump-mode
    auto-complete
    ac-nrepl
    clojure-mode
    elisp-slime-nav
    expand-region
    find-file-in-project
    flymake
    graphviz-dot-mode
    guru-mode
    helm
    helm-projectile
    idle-highlight-mode
    ido-ubiquitous
    inf-ruby
    iy-go-to-char
    multiple-cursors
    magit
    markdown-mode
    nrepl
    paredit
    powerline
    projectile
    rainbow-delimiters
    smex
    smart-forward
    starter-kit
    starter-kit-eshell
    starter-kit-lisp
    starter-kit-bindings
    starter-kit-ruby
    unbound
    undo-tree
    yaml-mode
    zenburn-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-elpa-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" "be7eadb2971d1057396c20e2eebaa08ec4bfd1efe9382c12917c6fe24352b7c1" "71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" "b7553781f4a831d5af6545f7a5967eb002c8daeee688c5cbf33bf27936ec18b3" default)))
 '(org-agenda-files (quote ("~/Documents/org/capture.org" "~/Documents/org/books.org" "~/Documents/org/todo.org"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'zenburn)

