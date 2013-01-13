;;; Code:
(setq inhibit-startup-screen t)

;; turn off mouse interface early in startup to avoid momentary dispaly
(when window-system
  (setq frame-title-format '(buffer-file-name "%f" ("%b")))
  (menu-bar-mode -1)           ; 不要菜单栏
  (tool-bar-mode -1)           ; 不需要工具栏
  (scroll-bar-mode -1)         ; 不需要滚动条
  (set-fringe-mode '(0 . 1))   ; 小的 fringe 边距
  (tooltip-mode -1)
  (mouse-wheel-mode t))

;; Swith the flavour
(if (< (string-to-number (format-time-string "%w")) 7)
    (progn
      (add-subfolders-to-theme-load-path themes-dir)
      (load-theme 'solarized-dark t))
  (progn
    (require 'color-theme)
    (require 'color-theme-molokai)
    (color-theme-initialize)
    (color-theme-molokai)))

;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'zy-ui)

;;;;;; zy-ui.el END
