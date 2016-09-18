;; load tuareg mode
(load "~/.emacs.d/tuareg-master/tuareg-site-file")

;; Add opam emacs directory to the load-path
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))

;; Load merlin-mode
(require 'merlin)
;; Start merlin on ocaml files
(add-hook 'tuareg-mode-hook 'merlin-mode t)
(add-hook 'caml-mode-hook 'merlin-mode t)

;; Use opam switch to lookup ocamlmerlin binary
(setq merlin-command 'opam)
(setq merlin-ac-setup 't)