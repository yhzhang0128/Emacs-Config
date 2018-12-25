;; tuareg: OCaml toolkit
;; merlin: opam install merlin
;; elpa: auto-complete, relative-line-numbers 

;; Emacs window settings
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(menu-bar-mode -1)

;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(85 . 75))
(add-to-list 'default-frame-alist '(alpha . (85 . 75)))

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p) ; y or n is enough

;; show matching paranthesis
(show-paren-mode 1)
;; comment shotcut
(global-set-key (kbd "C-c C-m") 'comment-or-uncomment-region)

;; tab configuration
(setq c-basic-offset 4)
(setq default-tab-width 4)
(setq-default indent-tabs-mode nil)

;; settings for font
(tool-bar-mode -1)
(set-default-font "Monospace 20")

;; molokai theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/theme")
(setq molokai-theme-kit t)
(load-theme 'molokai t)


;; config for package management
(setq package-archives 
  '(("gnu" . "http://elpa.gnu.org/packages/")
    ;;("marmalade" . "http://marmalade-repo.org/packages/")
    ("melpa" . "http://melpa.org/packages/")
   )
)

;; initialize auto-complete
(package-initialize)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20160329.2321/dict")
(ac-config-default)

;; load language config for Golang
;; (load "~/.emacs.d/yunhao/php")
;; (load "~/.emacs.d/yunhao/ocaml")
;; (defun set-exec-path-from-shell-PATH ()
;;  (let ((path-from-shell (replace-regexp-in-string
;;                          "[ \t\n]*$"
;;                          ""
;;                           (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
;;     (setenv "PATH" path-from-shell)
;;     (setq eshell-path-env path-from-shell) ; for eshell users
;;     (setq exec-path (split-string path-from-shell path-separator))))

;; (when window-system (set-exec-path-from-shell-PATH))
;; (exec-path-from-shell-copy-env "GOPATH")
;; (require 'go-autocomplete)
;; (require 'auto-complete-config)
;; (ac-config-default)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (neotree sr-speedbar relative-line-numbers pdf-tools nlinum go-mode go-autocomplete exec-path-from-shell ac-php-core))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; pdf viewer
(pdf-tools-install)

;; neo-tree
(require 'neotree)
(neotree-toggle)
