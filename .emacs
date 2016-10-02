;; tuareg: OCaml toolkit
;; merlin: opam install merlin
;; elpa: auto-complete, sr-speedbar, relative-line-numbers 

;; line number
;;(global-linum-mode 1)
;; relative line number
(add-to-list 'load-path "~/.emacs.d/elpa/relative-line-numbers-20151006.1446")
(require 'relative-line-numbers)
(global-relative-line-numbers-mode)
;; align to 2 charactors
(defun my-line-format (offset)
  "Another formatting function"
  (format "%2d: " (abs offset)))

(setq relative-line-numbers-format 'my-line-format)

;; tab configuration
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; settings for font
(tool-bar-mode -1)
(set-default-font "Menlo 22")

;; molokai theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme")
(setq molokai-theme-kit t)
(load-theme 'molokai t)

;; source tree
(setq imenu-auto-scan t)
(add-to-list 'load-path "~/.emacs.d/elpa/sr-speedbar-20150804.951")
(require 'sr-speedbar)
(setq sr-speedbar-right-side nil ; put on left side
      sr-speedbar-width 27
      sr-speedbar-max-width 27
      sr-speedbar-auto-refresh nil
      speedbar-use-images nil
      speedbar-show-unknown-files t)

(global-set-key (kbd "C-x P") 'sr-speedbar-toggle)
(global-set-key (kbd "C-x p") 'sr-speedbar-close)

;; config for package management
(setq package-archives 
  '(("gnu" . "http://elpa.gnu.org/packages/")
("marmalade" . "http://marmalade-repo.org/packages/")
("melpa" . "http://melpa.org/packages/")))

;; initialize auto-complete
(package-initialize)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20160329.2321/dict")
(ac-config-default)

;; load language config
;;(load "~/.emacs.d/yunhao/php")
;;(load "~/.emacs.d/yunhao/ocaml")

;; currently not used settings
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("c3c0a3702e1d6c0373a0f6a557788dfd49ec9e66e753fb24493579859c8e95ab" default)))
 '(package-selected-packages
   (quote
    (relative-line-numbers sr-speedbar auto-complete ac-php-core))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-relative-line-numbers-mode)
