(setq debug-on-error t)
(setq debug-on-quit t)

;; Minimal UI
(scroll-bar-mode 0)
(tool-bar-mode 0)
(tooltip-mode 0)
(menu-bar-mode 0)

;; Font size
(set-face-attribute 'default nil :height 110)

;; Line numbers
(display-line-numbers-mode t)
(setq-default display-line-numbers 'relative)


(defconst emacs-start-time (current-time))
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"  . "http://orgmode.org/elpa/")
                      ("gnu"   . "http://elpa.gnu.org/packages/")
                      ("melpa" . "http://melpa.org/packages/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)
(setq use-package-always-ensure t)
(let ((elapsed (float-time (time-subtract (current-time)
                                          emacs-start-time))))
  (message "Loaded packages in %.3fs" elapsed))
(setq gc-cons-threshold 100000)

(use-package nord-theme
  :init
  (load-theme 'nord t))

(use-package ivy
  :init
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  :config
  (ivy-mode t))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  :config
  (use-package evil-surround
    :config
    (global-evil-surround-mode))
  (evil-mode t))

(use-package org)

(setq debug-on-error nil)
(setq debug-on-quit nil)

(let ((elapsed (float-time (time-subtract (current-time)
                                          emacs-start-time))))
  (message "Loading settings...done (%.3fs)" elapsed))
(put 'narrow-to-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/todo.org")))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
