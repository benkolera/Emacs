
(require 'color-theme)
(color-theme-initialize)

(defun color-theme-bkolera()
  "Ben Kolera's personal color scheme."
  (interactive)
  (color-theme-install
    '(color-theme-bkolera
      (
       (background-color . "gray20")
       (background-mode . dark)
       (border-color . "black")
       (cursor-color . "light steel blue")
       (foreground-color . "gainsboro")
       (mouse-color . "sienna1")
       )
      (default ((t (:background "gray20" :foreground "gainsboro" :font "Monospace-9"))))
      (blue ((t (:foreground "steel blue"))))
      (bold ((t (:bold t))))
      (bold-italic ((t (:bold t))))
      (border-glyph ((t (nil))))
      (buffers-tab ((t (:background "#0C1021" :foreground "#F8F8F8"))))
      (font-lock-builtin-face ((t (:foreground "chocolate"))))
      (font-lock-comment-face ((t (:italic t :foreground "gray50"))))
      (font-lock-constant-face ((t (:foreground "coral"))))
      (font-lock-doc-string-face ((t (:foreground "sandy brown"))))
      (font-lock-function-name-face ((t (:foreground "violet"))))
      (font-lock-keyword-face ((t (:foreground "medium purple"))))
      (font-lock-preprocessor-face ((t (:foreground "Aquamarine"))))
      (font-lock-reference-face ((t (:foreground "SlateBlue"))))

      (font-lock-regexp-grouping-backslash ((t (:foreground "#E9C062"))))
      (font-lock-regexp-grouping-construct ((t (:foreground "red"))))

      (font-lock-string-face ((t (:foreground "#61CE3C"))))
      (font-lock-type-face ((t (:foreground "light sky blue"))))
      (font-lock-variable-name-face ((t (:foreground "coral"))))
      (font-lock-warning-face ((t (:bold t :foreground "deep pink"))))
      (gui-element ((t (:foreground "black"))))
      (region ((t (:background "steel blue"))))
      (mode-line ((t (:background "grey75" :foreground "black"))))
      (highlight ((t (:background "#222222"))))
      (highline-face ((t (:background "SeaGreen"))))
      (italic ((t (nil))))
      (left-margin ((t (nil))))
      (text-cursor ((t (:background "yellow" :foreground "black"))))
      (toolbar ((t (nil))))
      (underline ((nil (:underline nil))))
      (cperl-hash-face ((f (:foreground "peach puff"))))
      (cperl-array-face ((f (:foreground "sandy brown"))))
      (cperl-nonoverridable-face ((t (:foreground "hot pink"))))
      (highlight-80+ ((t (:background "LightGoldenrod1"))))
      (font-latex-sectioning-5-face ((t (:background "DodgerBlue"))))
      (hl-line ((t (:background "gray25"))))
      (frame ((t (:background "gray15"))))
      (linum ((f (:foreground "gray45" :background "gray15"))))
      )
    )
  )

(color-theme-bkolera)
