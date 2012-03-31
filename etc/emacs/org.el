(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(setq org-directory (expand-file-name "~/var/org/"))
(setq org-default-notes-file "~/var/org/notes")
(setq remember-annotation-functions '(org-remember-annotation))
(setq remember-handler-functions '(org-remember-handler))
(add-hook 'remember-mode-hook 'org-remember-apply-template)

(defun org-file? (file) 
  (and (string-match ".org$" file) (not (string-match "#" file))))

(defun org-files ()
  (mapcar (lambda (x) (format "%s%s" org-directory x ))
          (remove-if-not 'org-file? (directory-files org-directory))))

(setq org-agenda-files (org-files) )

(setq org-remember-templates
      '(("IseekTodo" ?t "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/var/org/iseek.org" "Tasks")
        ("PersonalTodo" ?p "* TODO %^{Brief Description} %^g\n%?\nAdded: %U" "~/var/org/personal.org" "Tasks")
        ("Journal"   ?j "** %^{Head Line} %U %^g\n%i%?"  "~/var/org/journal.org")
        ("Clipboard" ?c "** %^{Head Line} %U %^g\n%c\n%?"  "~/var/org/journal.org")
        ))
      
(global-set-key "\C-col" 'org-store-link)
(global-set-key "\C-coa" 'org-agenda)
(global-set-key "\C-cob" 'org-iswitchb)
(global-set-key "\C-cor" 'org-remember)

(defun org-iseek ()
  (interactive)
  (find-file "~/var/org/iseek.org"))

(defun org-personal ()
  (interactive)
  (find-file "~/var/org/personal.org"))

(defun org-journal ()
  (interactive)
  (find-file "~/var/org/journal.org"))

(global-set-key "\C-coi" 'org-iseek)
(global-set-key "\C-cop" 'org-personal)
(global-set-key "\C-coj" 'org-journal)



(setq org-agenda-custom-commands
      '(("B" "Bens Agenda"
         ((agenda "" ((org-agenda-ndays 7)                      ;; overview of appointments
                      (org-agenda-start-on-weekday nil)         ;; calendar begins today
                      (org-agenda-repeating-timestamp-show-all t)
                      (org-agenda-entry-types '(:timestamp :sexp))))
          (agenda "" ((org-agenda-ndays 1)                      ;; daily agenda
                      (org-deadline-warning-days 7)             ;; 7 day advanced warning for deadlines
                      (org-agenda-scheduled-leaders '("" ""))
                      (org-agenda-prefix-format "%t%s")))
          (todo "TODO"
                ((org-agenda-sorting-strategy '(priority-down))
                 (org-agenda-todo-keyword-format "")))
          ))))
