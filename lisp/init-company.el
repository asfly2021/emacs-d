;;;company
(global-company-mode) ;默认开启company
(add-hook 'after-init-hook 'global-company-mode) ;输入触发company

;(use-package company-box
;  :hook (company-mode . company-box-mode))

(provide 'init-company)
