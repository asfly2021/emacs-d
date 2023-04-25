(use-package org-mode
  :mode "\\.org$"
  :ensure org
  :config
  (progn
    (setq org-log-done 'time)
    (setq org-confirm-babel-evaluate nil)
    (setq org-export-babel-evaluate nil)
    (setq org-html-validation-link nil)
    ;; ... more stuff
  )
  )
(provide 'init-org-mode)
