(require 'haskell-mode)

(setq auto-mode-alist (cons '("\\.hs$" . haskell-mode) auto-mode-alist))

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'highlight-80+-mode)
