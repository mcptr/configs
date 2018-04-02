(global-set-key [f1] 'dired)
;;(global-set-key [f2] 'hs-hide-all)
(global-set-key [f3] 'hs-hide-all)
(global-set-key [f4] 'hs-toggle-hiding)
(global-set-key [f5] 'tabify)
(global-set-key [f6] 'untabify)
(global-set-key [f7] 'indent-region)
(global-set-key [f8] 'advertised-undo)
(global-set-key [f9] 'whitespace-mode)
(global-set-key [f10] 'sr-speedbar-select-window)
(global-set-key [f11] 'highlight-changes-mode)
(global-set-key [f12] 'sr-speedbar-toggle)

(global-set-key "\M-\C-r" 'query-replace)
(global-set-key "\M-r" 'replace-string)
(global-set-key "\M-g" 'goto-line)
(global-set-key "\M-h" 'help-command)

;; (global-set-key (kbd "C-\\") 'toggle-selective-display)
;; (global-set-key (kbd "C-x O") 'previous-multiframe-window)
;; keys
(define-key query-replace-map [return] 'act)
(define-key query-replace-map [?\C-m] 'act)
