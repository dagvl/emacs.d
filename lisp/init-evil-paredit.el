(require-package 'evil-paredit)
(evil-paredit-mode 1)
(add-hook 'emacs-lisp-mode-hook 'evil-paredit-mode)
(provide 'init-evil-paredit)
