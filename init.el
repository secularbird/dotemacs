(load "server")
(unless (server-running-p) (server-start))

(setq user-full-name "Zhuang Yao")
(setq user-mail-address "secularbird.eagle@gmail.com")
(setq global-mode-string (message "  %s  " user-full-name))

;; debug begin, show error stack trace.
;; (setq debug-on-error t)

(defconst vendor-dir (expand-file-name "vendor/" user-emacs-directory)
  "The root folder of external packages")

(defconst themes-dir (expand-file-name "themes/" user-emacs-directory)
  "The root folder of themes")

(defconst tmp-dir (expand-file-name "temp/" user-emacs-directory)
  "The root folder of temps")

;; Borrow from bbatsov's prelude to create automatically.
(unless (file-exists-p tmp-dir)
  (make-directory tmp-dir))

(defun add-subfolders-to-load-path (parent-dir)
  "Add subfolders to load path"
  (dolist (f (directory-files parent-dir))
    (let ((name (concat parent-dir f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'load-path name)))))

(defun add-subfolders-to-theme-load-path (parent-dir)
  "Add subfolders to theme load path"
  (dolist (f (directory-files parent-dir))
    (let ((name (concat parent-dir f)))
      (when (and (file-directory-p name)
                 (not (equal f ".."))
                 (not (equal f ".")))
        (add-to-list 'custom-theme-load-path name)))))

;; add the first level subfolders automatically
(add-subfolders-to-load-path user-emacs-directory)
(add-subfolders-to-load-path vendor-dir)
(add-subfolders-to-load-path themes-dir)

;; load configurations.
(require 'zy-ui)                      ; eye candy
(require 'zy-editor)                  ; enhance the editor
(require 'zy-defuns)                  ; useful tricks
(require 'zy-kbds)                    ; key bindings
(require 'zy-misc)                    ; miscellaneous
(require 'zy-prog)                    ; programming

;; set an explicit file to customization created via the UI
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

;;;;;;;;;;;; init.el END
