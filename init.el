(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
			     (package-refresh-contents)
			     (package-install 'use-package))
(elpy-enable)
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "python3")

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package base16-theme
  :ensure t
  :config
  (load-theme 'base16-tomorrow-night t))

(use-package auto-complete
  :ensure t)

(use-package py-autopep8
  :ensure t)

(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(require 'evil)
(evil-mode 1)

(use-package js2-mode
  :ensure t)

(use-package rjsx-mode
  :ensure t)

(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; Removes tool bar.
(tool-bar-mode -1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (rjsx-mode js2-mode evil py-autopep8 goto-chg undo-tree auto-complete elpy base16-theme which-key try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
