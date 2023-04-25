(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ;加载lisp路径
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-elpa)
(require 'init-base)
(require 'init-lsp)
(require 'init-ui)
(require 'init-pyim)
(require 'init-company)
(require 'init-org-mode)

(provide 'init)
