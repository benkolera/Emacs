;;Shift Cursor Keys move Windows
(windmove-default-keybindings)

(require 'fastnav)

(global-set-key "\M-z" 'zap-up-to-char-forward)
(global-set-key "\M-Z" 'zap-up-to-char-backward)
(global-set-key "\M-s" 'jump-to-char-forward)
(global-set-key "\M-S" 'jump-to-char-backward)
(global-set-key "\M-r" 'replace-char-forward)
(global-set-key "\M-R" 'replace-char-backward)
(global-set-key "\M-i" 'insert-at-char-forward)
(global-set-key "\M-I" 'insert-at-char-backward)
(global-set-key "\M-j" 'execute-at-char-forward)
(global-set-key "\M-J" 'execute-at-char-backward)
(global-set-key "\M-k" 'delete-char-forward)
(global-set-key "\M-K" 'delete-char-backward)
(global-set-key "\M-m" 'mark-to-char-forward)
(global-set-key "\M-M" 'mark-to-char-backward)

(global-set-key "\M-p" 'sprint-forward)
(global-set-key "\M-P" 'sprint-backward)
