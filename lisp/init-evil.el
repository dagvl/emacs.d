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

;;; init-evil.el ends here
