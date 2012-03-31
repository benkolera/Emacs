(require 'scala-mode-auto)

(defun scala-turnoff-indent-tabs-mode ()
  (setq indent-tabs-mode nil))

;; scala mode hooks
(add-hook 'scala-mode-hook 'scala-turnof-indent-tabs-mode)

(add-hook 'scala-mode-hook
	  '(lambda () (yas/minor-mode-on)))

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
(add-hook 'scala-mode-hook 'highlight-80+-mode)
