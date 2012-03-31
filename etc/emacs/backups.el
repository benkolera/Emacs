(defvar user-temporary-file-directory "~/var/emacs/")
(setq backup-by-copying t)
(setq backup-directory-alist
   `(("." . ,(concat user-temporary-file-directory "backup/"))
     (,tramp-file-name-regexp nil)))

(setq auto-save-list-file-prefix "tmp/.auto-saves-")

(setq auto-save-file-name-transforms
            `((".*" ,(concat user-temporary-file-directory "tmp/") t)))
