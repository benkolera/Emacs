(setq TeX-auto-save t) 
(setq TeX-parse-self t) 
(setq TeX-save-query nil)
(setq TeX-PDF-mode t)

(require 'flymake)

(defun flymake-get-tex-args (file-name) (list "pdflatex" 
    (list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))

(add-hook 'LaTeX-mode-hook 'flymake-mode)

(setq ispell-program-name "ispell") 
(setq ispell-dictionary "english") 

(add-hook 'LaTeX-mode-hook 'flyspell-mode) 
(add-hook 'LaTeX-mode-hook 'flyspell-buffer)
(add-hook 'LaTeX-mode-hook 'highlight-80+-mode)
(add-hook 'LaTeX-mode-hook 'auto-fill-mode)

(defun turn-on-outline-minor-mode () (outline-minor-mode 1))

(add-hook 'LaTeX-mode-hook 'turn-on-outline-minor-mode) 
(add-hook 'latex-mode-hook 'turn-on-outline-minor-mode) 
(setq outline-minor-mode-prefix "\C-c\C-o")
