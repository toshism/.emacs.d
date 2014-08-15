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
