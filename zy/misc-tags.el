(require 'eproject)
(require 'etags-select)

(defun build-ctags ()
  (interactive)
  (message "building project tags")
  (let ((root (eproject-root)))
    (shell-command
     (concat "ctags -e -R --extra=+fq --exclude=db --exclude=.svn --exclude=test --exclude=.git --exclude=public -f " root "TAGS " root)))
  (visit-project-tags)
  (message "tags built successfully"))

(defun visit-project-tags ()
  (interactive)
  (let ((tags-file (concat (eproject-root) "TAGS")))
    (visit-tags-table tags-file)
    (message (concat "Loaded " tags-file))))

(defun zy-find-tag ()
  "Borrow from http://mattbriggs.net/blog/2012/03/18/awesome-emacs-plugins-ctags/"
  (interactive)
  (if (file-exists-p (concat (eproject-root) "TAGS"))
      (visit-project-tags)
    (build-ctags))
  (etags-select-find-tag-at-point))

(global-set-key (kbd "M-.") 'zy-find-tag)

(provide 'misc-tags)
