;;; init.el --- Initialization file for Emacs
;;; Commentary:
;;; Emacs Startup File --- initialization for Emacs

;;; Code:

(custom-set-variables
 '(ansi-color-names-vector
   ["#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"])
 '(ansi-term-color-vector
   [unspecified "#1d1f21" "#cc6666" "#b5bd68" "#f0c674" "#81a2be" "#b294bb" "#81a2be" "#c5c8c6"] t)
 '(custom-enabled-themes (quote (base16-tomorrow-night)))
 '(custom-safe-themes
   (quote
	("3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "fede08d0f23fc0612a8354e0cf800c9ecae47ec8f32c5f29da841fe090dfc450" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" default)))
 '(package-selected-packages
   (quote
	(flycheck-irony company-irony python-docstring irony gitignore-mode dumb-jump ag apache-mode elixir-mode mmm-mode popwin color-identifiers-mode highlight-indent-guides telephone-line yaml-mode dockerfile-mode pyenv-mode all-the-icons neotree gh-md arduino-mode evil-magit async magit flycheck latex-preview-pane function-args ## python-doctring web-mode markdown-mode php-mode js2-mode evil py-autopep8 goto-chg undo-tree elpy base16-theme which-key use-package)))
 '(send-mail-function (quote mailclient-send-it))
 '(standard-indent 4))

(custom-set-faces)

(load "~/.emacs.d/scratch.el")
(load "~/.emacs.d/packages.el")
(load "~/.emacs.d/linux-style.el")
(load "~/.emacs.d/customizations.el")

;;; init.el ends here
