(setq compilation-window-height 8)

(setq compilation-finish-function
      (lambda (buf str)
	(if (string-match "exited abnormally" str)
	    (message "compilation errors, press C-x ` to visit")
                  (run-at-time 0.5 nil 'delete-windows-on buf)                    
                  (message "NO COMPILATION ERRORS!"))))


(setq special-display-buffer-names '("*compilation*"))
