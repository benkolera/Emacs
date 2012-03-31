(setq visible-bell t
      echo-keystrokes 0.1
      font-lock-maximum-decoration t
      inhibit-startup-message t
      transient-mark-mode t
      color-theme-is-global t
      shift-select-mode nil
      mouse-yank-at-point t
      require-final-newline t
      truncate-partial-width-windows nil
      uniquify-buffer-name-style 'forward
      ediff-window-setup-function 'ediff-setup-windows-plain
      oddmuse-directory (concat var-dir "oddmuse")
      xterm-mouse-mode t
      save-place-file (concat var-dir "places")
)

(global-hl-line-mode 1)

(setq x-select-enable-clipboard t)

(eval-after-load 'grep
  '(when (boundp 'grep-find-ignored-files)
    (add-to-list 'grep-find-ignored-files "target")
    (add-to-list 'grep-find-ignored-files "*.class")))


(defalias 'yes-or-no-p 'y-or-n-p)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'capitalize-region 'disabled nil)

;Don't need these keys for text navigation! 
(global-set-key [right] 'windmove-right)
(global-set-key [left] 'windmove-left)
(global-set-key [up] 'windmove-up)
(global-set-key [down] 'windmove-down)


