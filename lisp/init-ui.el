;; start-screen
(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook)
  ;; Set the title
  (setq dashboard-banner-logo-title "Talk is cheap. Show me the code"))




(setq dashboard-center-content t)

(load-theme 'idea-darkula t)

;; 美化状态栏
(use-package smart-mode-line
  :init
  (setq sml/no-confirm-load-theme t
        sml/theme 'respectful)
  (sml/setup))

;; 字体美化 
(use-package all-the-icons
  :if (display-graphic-p))

;; 重启emacs
(use-package restart-emacs)

(use-package neotree
  :init
  (global-set-key [f8] 'neotree-toggle))
(provide 'init-ui)
