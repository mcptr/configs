(require 'org)

(setq org-footnote-auto-adjust t)

(define-key org-mode-map (kbd "<C-S-right>") nil)
(define-key org-mode-map (kbd "<S-left>") 'org-do-promote)
(define-key org-mode-map (kbd "<S-right>") 'org-do-demote)

(define-key org-mode-map (kbd "<C-S-left>") 'org-promote-subtree)
(define-key org-mode-map (kbd "<C-S-right>") 'org-demote-subtree)
