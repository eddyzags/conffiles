;; Change backward kill word shortcut
(global-set-key (kbd "C-w") 'backward-kill-word)

;; If you want to be able to M-x without meta (phones, etc)
(global-set-key (kbd "C-x C-m") 'execute-extended-command)
(global-set-key (kbd "C-c C-m") 'execute-extended-command)

;; Compile shortcut
(global-set-key (kbd "C-x p") 'compile)

(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

;; linum-mode
(add-hook 'c-mode-hook 'linum-mode)
(add-hook 'go-mode-hook 'linum-mode)

;; zenburn-theme init
(defun zenburn-init ()
  (load-theme 'zenburn))

(add-hook 'after-init-hook 'zenburn-init)

;; No need for that shit!
(setq visible-bell nil)

(add-hook 'before-save-hook 'gofmt-before-save)
(global-set-key (kbd "M-`") 'clang-format-buffer)
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'linum-mode)

(require 'package)
(add-to-list 'package-archives '("org", "http://orgmode.org/elpa/") t)
(eval-after-load "org" '(require 'ox-md nil t))
(setq org-export-with-sub-superscripts nil)

(add-hook 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(add-hook 'jinja2-mode)
(add-tolist 'auto-mode-alist' ("\\.j2$" . jinja2-mode))

(add-to-list 'load-path' "./dockerfile-mode.el")
(require 'dockerfile-mode)
(add-to-list 'auto-most-alist '("Dockerfile\\'" . dockerfile-mode))
