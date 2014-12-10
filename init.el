;; This sets up the load path so that we can override it
(package-initialize nil)
;; Override the packages with the git version of Org
(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/lisp")
(add-to-list 'load-path "~/.emacs.d/elisp/org-mode/contrib/lisp" t)
;; Load the rest of the packages
(package-initialize t)
(require 'org)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "~/.emacs.d/config/tosh.org"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("19d84b6b3d8ff178fcf8c19ae97bd1b6c74bb07903d5856caa36b107ce923134" default)))
 '(global-flycheck-mode t nil (flycheck)))
