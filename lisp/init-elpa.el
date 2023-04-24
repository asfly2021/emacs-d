(setq package-archives '(("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.cloud.tencent.com/elpa/melpa/")
                         ("org"   . "http://mirrors.cloud.tencent.com/elpa/org/")))

(setq package-check-signature nil) ;不检查签名
(require 'package)

;; 初始化配置
(unless (bound-and-true-p package--initialized)
  (package-initialize))

;; 刷新软件索引
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; `use-package-always-ensure' 避免每个软件包都需要加 ":ensure t" 
;; `use-package-always-defer' 避免每个软件包都需要加 ":defer t" 
(setq use-package-always-ensure t
      use-package-always-defer t
      use-package-enable-imenu-support t
      use-package-expand-minimally t)

(require 'use-package)

(provide 'init-elpa)