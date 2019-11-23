  ;; org-default-notes-fileのディレクトリ
  (setq org-directory (expand-file-name "~/Dropbox/org-for-cat/"))
  ;; agenda
  (setq org-agenda-files (list (expand-file-name "~/Dropbox/org-for-cat/private")))

  (setq org-capture-templates
        '(("t" "Todo entry" entry (file "~/Dropbox/org-for-cat/private/todo.org")
           "* TODO %?\n    :LOGBOOK:\n    - Added: %U\n    :END:" :empty-lines 1)
          ("p" "Plan entry" entry (file+datetree "~/Dropbox/org-for-cat/private/plan.org")
           "- [ ] %?")
          ("j" "Journal entry" entry (file+datetree "~/Dropbox/org-for-cat/private/journal.org")
           "* 週次レビュー\n- good:%?\n- bad:\n- try:\n")
          ("r" "Review entry" entry (file+datetree "~/Dropbox/org-for-cat/private/review.org") (file "~/Dropbox/org-for-cat/private/template-review.org"))
          )
        )

