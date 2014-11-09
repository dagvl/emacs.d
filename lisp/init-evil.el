;;; package --- initialization of evil mode
;;; Commentary:

;;; Code:
(require-package 'evil)
(evil-mode 1)

(provide 'init-evil)

(dolist
    (mode-map
     '((ag-mode . emacs)
       (cider-repl-mode . emacs)
       (comint-mode . emacs)
       (eshell-mode . emacs)
       (fundamental-mode . emacs)
       (git-commit-mode . insert)
       (git-rebase-mode . emacs)
       (help-mode . emacs)
       (paradox-menu-mode . emacs)
       (term-mode . emacs)))
  (evil-set-initial-state `,(car mode-map) `,(cdr mode-map)))

;;; wrap-round-xyz
(define-key evil-normal-state-map ",W" 'paredit-wrap-round)
(define-key evil-normal-state-map ",w(" 'paredit-wrap-round)
(define-key evil-normal-state-map ",w[" 'paredit-wrap-square)
;;;(define-key evil-normal-state-map ",w{" 'paredit-wrap-curly)

;;; slurping
(define-key evil-normal-state-map ",." 'paredit-forward-slurp-sexp)
(define-key evil-normal-state-map ",," 'paredit-forward-barf-sexp)
(define-key evil-normal-state-map ",:" 'paredit-backward-slurp-sexp)
(define-key evil-normal-state-map ",;" 'paredit-backward-barf-sexp)

;; init-evil.el ends here
