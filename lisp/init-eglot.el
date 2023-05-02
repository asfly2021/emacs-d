(require 'eglot)
(add-hook 'rust-mode-hook 'eglot-ensure)

(use-package lsp-ui
    :after lsp-mode
    :init
    (setq lsp-ui-doc-include-signature t
	      lsp-ui-doc-position 'at-point
          lsp-ui-sideline-ignore-duplicate t)
    (add-hook 'lsp-mode-hook 'lsp-ui-mode)
    (add-hook 'lsp-ui-mode-hook 'lsp-modeline-code-actions-mode)
    :config
    (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
    (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)
    :custom
  (lsp-ui-peek-always-show t)
  (lsp-ui-sideline-show-hover t)
  (lsp-ui-doc-enable nil))

(use-package dap-mode
    :init
    (add-hook 'lsp-mode-hook 'dap-mode)
    (add-hook 'dap-mode-hook 'dap-ui-mode)
    (add-hook 'dap-mode-hook 'dap-tooltip-mode)
    ;;   (add-hook 'python-mode-hook (lambda() (require 'dap-python)))
    ;;   (add-hook 'go-mode-hook (lambda() (require 'dap-go)))
    ;;   (add-hook 'java-mode-hook (lambda() (require 'dap-java)))
    )
(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))

(provide 'init-eglot)
