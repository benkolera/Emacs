;; Self rolled to help with snippets generating date inclusive comments. :)

(defun date-ymd ()
  "Prints the current date in yyyy-mm-dd format."
  (interactive)
  (insert (format-time-string "%Y-%m-%d"))
)

(defun date-ymdhms ()
  "Print the current timestamp in yyyy-mm-dd HH:MM:SS format."
  (interactive)
  (insert (format-time-string "%Y-%m-%d %H:%M:%S"))
)

(defun date-y ()
  "Print the year in yyyy format"
  (interactive)
  (insert (format-time-string "%Y"))
)

(provide 'write-date)

