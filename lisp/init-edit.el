(use-package drag-stuff
  :bind
  (("<M-up>" . drag-stuff-up)
  ("<M-down>" . drag-stuff-down)))

;;ace-window可快速进行窗口间的跳转
(use-package ace-window
  :bind
  (("M-o" . 'ace-window)))
(provide 'init-edit)
