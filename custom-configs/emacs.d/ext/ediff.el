(autoload 'ediff-buffers "ediff" "Intelligent Emacs interface to diff" t)
(autoload 'ediff-files "ediff" "Intelligent Emacs interface to diff" t)
(autoload 'ediff-files-remote "ediff" "Intelligent Emacs interface to diff")

(defun command-line-diff (switch)
  (let ((file1 (pop command-line-args-left))
                (file2 (pop command-line-args-left)))
        (ediff file1 file2)))

(add-to-list 'command-switch-alist '("diff" . command-line-diff))

(setq ediff-split-window-function (lambda (&optional arg)
                                                                        (if (> (frame-width) 150)
                                                                                (split-window-horizontally arg)
                                                                          (split-window-vertically arg))))

;; Some custom configuration to ediff
(defvar my-ediff-bwin-config nil "Window configuration before ediff.")
(defcustom my-ediff-bwin-reg ?b
  "*Register to be set up to hold `my-ediff-bwin-config'
    configuration.")

(defvar my-ediff-awin-config nil "Window configuration after ediff.")
(defcustom my-ediff-awin-reg ?e
  "*Register to be used to hold `my-ediff-awin-config' window
    configuration.")

(defun my-ediff-bsh ()
  "Function to be called before any buffers or window setup for
    ediff."
  (setq my-ediff-bwin-config (current-window-configuration))
  (when (characterp my-ediff-bwin-reg)
        (set-register my-ediff-bwin-reg
                      (list my-ediff-bwin-config (point-marker)))))

(defun my-ediff-ash ()
  "Function to be called after buffers and window setup for ediff."
  (setq my-ediff-awin-config (current-window-configuration))
  (when (characterp my-ediff-awin-reg)
        (set-register my-ediff-awin-reg
                      (list my-ediff-awin-config (point-marker)))))

(defun my-ediff-qh ()
  "Function to be called when ediff quits."
  (when my-ediff-bwin-config
        (set-window-configuration my-ediff-bwin-config)))

(add-hook 'ediff-before-setup-hook 'my-ediff-bsh)
(add-hook 'ediff-after-setup-windows-hook 'my-ediff-ash 'append)
(add-hook 'ediff-quit-hook 'my-ediff-qh)
