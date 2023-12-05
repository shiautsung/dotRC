(load-theme 'wombat t)

(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'ido)
(ido-mode t)

(column-number-mode t)
(menu-bar-mode -1)

;; By an unknown contributor
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
	((looking-at "\\s)") (forward-char 1) (backward-list 1))
	        (t (self-insert-command (or arg 1)))))

(show-paren-mode t)
(setq transient-mark-mode t)

(setq confirm-kill-emacs 'yes-or-no-p)  ;; Confirm before killing emacs
