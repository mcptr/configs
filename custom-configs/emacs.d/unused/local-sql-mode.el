(require 'sql-mode)

(defun my-sql-indent ()
  (setq tab-width 4
        indent-tabs-mode t
	))

(defun my-sql-pgsql-keywords ()
  (setq sql-highlight-postgres-keywords t))

;; add hook
(add-hook 'sql-mode-hook 'my-sql-indent)
(add-hook 'sql-mode-hook 'my-sql-pgsql-keywords)
