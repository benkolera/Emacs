(require 'fill-column-indicator) 

(add-hook 'cperl-mode-hook 'fci-mode)
(add-hook 'haskell-mode-hook 'fci-mode)
(add-hook 'scala-mode-hook 'fci-mode)
(add-hook 'sql-mode-hook 'fci-mode)

(setq-default fill-column 80) 
