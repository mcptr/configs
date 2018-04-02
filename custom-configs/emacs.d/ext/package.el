(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")
			 ("melpa" . "http://melpa.org/packages/")))
;; (add-to-list 'package-archives
;; 	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(package-initialize)
