;; start-screen
(use-package dashboard
  :ensure t
  :init
  (dashboard-setup-startup-hook)
  ;; Set the title
  (setq dashboard-startup-banner "/Users/shengfu/.emacs.d/img/logo.png")
  (setq dashboard-banner-logo-title "Talk is cheap. Show me the code.")

)




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

(use-package all-the-icons-ibuffer
  :ensure t
  :hook (ibuffer-mode . all-the-icons-ibuffer-mode)
  :config
  (; Predicate whether the icons are able to be displayed."
(setq all-the-icons-ibuffer-display-predicate #'display-graphic-p)

;; Whether display the icons.
(setq all-the-icons-ibuffer-icon t)

;; Whether display the colorful icons.
;; It respects `all-the-icons-color-icons'.
(setq all-the-icons-ibuffer-color-icon t)

;; The default icon size in ibuffer.
(setq all-the-icons-ibuffer-icon-size 1.0)

;; The default vertical adjustment of the icon in ibuffer.
(setq all-the-icons-ibuffer-icon-v-adjust 0.0)

;; Use human readable file size in ibuffer.
(setq  all-the-icons-ibuffer-human-readable-size t)

;; A list of ways to display buffer lines with `all-the-icons'.
;; See `ibuffer-formats' for details.
;all-the-icons-ibuffer-formats

;; Slow Rendering
;; If you experience a slow down in performance when rendering multiple icons simultaneously,
;; you can try setting the following variable
(setq inhibit-compacting-font-caches t)))

;; 重启emacs
(use-package restart-emacs)

(use-package neotree
  :init
  (global-set-key [f8] 'neotree-toggle))
(provide 'init-ui)
