;;(require 'python-mode)

;; (defun python-mode-untabify ()
;;   (save-excursion
;;     (goto-char (point-min))
;;     (while (re-search-forward "[ \t]+$" nil t)
;;       (delete-region (match-beginning 0) (match-end 0)))
;;     (goto-char (point-min))
;;     (if (search-forward "\t" nil t)
;; 	(untabify (1- (point)) (point-max))))
;;   nil)


;; (defun py-next-block ()
;;    "go to the next block.  Cf. `forward-sexp' for lisp-mode"
;;    (interactive)
;;    (py-mark-block nil 't)
;;    (back-to-indentation))


;; (add-hook 'python-mode-hook
;; 	  '(lambda ()
;; 	     (make-local-variable 'write-contents-hooks)
;; 	     (add-hook 'write-contents-hooks 'python-mode-untabify)))


;; (add-hook 'python-mode-hook 'py-next-block)

;; add hook
;; (defun my-py-indent ()
;;   (setq tab-width 4
;;         indent-tabs-mode t
;;         ;;py-indent-offset 4
;; 	;;py-smart-indentation nil
;; 	))

;; (add-hook 'python-mode-hook 'my-py-indent)


(require 'package)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(package-initialize)
(elpy-enable)

(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
	;; (setq python-shift-right 2)
	;; (setq python-shift-left 2)
        (setq python-indent-offset 4)))
