(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

(defun n-cperl-mode-hook ()
  (setq cperl-indent-level 4)
  (setq cperl-continued-statement-offset 4)
  ;;  (setq cperl-extra-newline-before-brace t)
  ;;  (set-face-background 'cperl-array-face "wheat")
  ;;  (set-face-background 'cperl-hash-face "wheat")
  (setq cperl-indent-parens-as-block t)
  (setq cperl-merge-trailing-else nil)
  (setq cperl-tab-always-indent t)
  (setq cperl-close-paren-offset -4)
  (setq cperl-lineup-step t)
  (setq cperl-linefeed t)
  (setq cperl-indent-left-aligned-comments t)
  (setq indent-tabs-mode nil)
  )

(add-hook 'cperl-mode-hook 'n-cperl-mode-hook t)

(defun cperl-mode-untabify ()
  (save-excursion
    (goto-char (point-min))
    (while (re-search-forward "[ \t]+$" nil t)
      (delete-region (match-beginning 0) (match-end 0)))
    (goto-char (point-min))
    (if (search-forward "\t" nil t)
	(untabify (1- (point)) (point-max))))
  nil)

(add-hook 'cperl-mode-hook
	  '(lambda ()
	     (make-local-variable 'write-contents-hooks)
	     (add-hook 'write-contents-hooks 'cperl-mode-untabify)))
