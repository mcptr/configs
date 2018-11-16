;; LOAD: (load-file (convert-standard-filename "~/.custom-configs/emacs.d/init.el"))


(setq custom-emacs-directory "~/.custom-configs/emacs.d/")

(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "emacs/*.el")))
(mapc 'load-library (file-expand-wildcards (concat custom-emacs-directory "ext/*.el")))


;; (add-to-list 'package-archives
;; 			 '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;("melpa" . "http://stable.melpa.org/packages/") t)
