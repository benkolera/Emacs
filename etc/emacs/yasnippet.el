(put 'downcase-region 'disabled nil)

(require 'yasnippet) 
(yas/initialize)

(setq yas/root-directory 
      (list 
       "~/lib/yasnippet"
       (concat lib-dir "yasnippet-trunk/snippets")
))
                           
(mapc 'yas/load-directory yas/root-directory)

