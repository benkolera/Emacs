;;Need this because it doesn't find the newest one otherwise.
(load-file (concat lib-dir "cperl-mode.el"))
(require 'cperl-mode) 

(defalias 'perl-mode 'cperl-mode)

(eval-after-load 'cperl-mode
  '(progn
     (highlight-80+-mode)
     (define-key cperl-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
     (define-key cperl-mode-map (kbd "C-M-h") 'backward-kill-word)
     (define-key cperl-mode-map (kbd "C-x \\") 'perltidy-region) 
     ))

(require 'auto-complete)
(require 'perl-completion)

(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -q" nil t)))

(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))


(global-set-key (kbd "C-h P") 'perldoc)

(add-to-list 'auto-mode-alist '("\\.p[lm]$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.t$" . cperl-mode))
(add-to-list 'auto-mode-alist '("\\.pod$" . pod-mode))
(add-to-list 'auto-mode-alist '("\\.tt$" . tt-mode))

(add-hook  'cperl-mode-hook
           (lambda ()
             (when (require 'auto-complete nil t)
               (perl-completion-mode t)
               (auto-complete-mode t)
               (highlight-80+-mode
                t)
               (make-variable-buffer-local
                'ac-sources)
               (setq
                ac-sources
                '(ac-source-perl-completion)))))

(setq cperl-indent-level 2
      cperl-close-paren-offset -2
      cperl-indent-parens-as-block 1
)
      
