;; set INFOPATH
(add-hook 'Info-mode-hook
          (lambda () (add-to-list 'Info-directory-list "~/.emacs.d/el-get/el-get"))
          'append)

(add-to-list 'load-path (concat user-emacs-directory "el-get/el-get"))
(require 'el-get)
(setq el-get-user-package-directory (concat user-emacs-directory "package-config"))
(setq el-get-sources
      '((:name yasnippet)
        (:name org-mode)
        (:name auctex)
        (:name haskell-mode)
        (:name ghc-mod)
        (:name hs-lint)
        (:name linum+
               :type http
               :url "http://dea.googlecode.com/svn/trunk/my-lisps/linum+.el"
               :load-path (".")
               :features linum+)))

(setq my-el-get-packages (mapcar 'el-get-source-name el-get-sources))
(el-get 'sync my-el-get-packages)
