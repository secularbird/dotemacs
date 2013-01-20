;;; Code:

;;;;;;; Here are for trickers
(require 'misc)
(require 'misc-ac)                       ; Auto Complete
(require 'misc-yas)                      ; Yasnippet
(require 'misc-doc)                      ; Documents
(require 'misc-tags)                     ; Navigation in project
(require 'misc-hist)                     ; Save some history
(require 'misc-mark)                     ; Highlight and mark symbols
(require 'misc-magit)                    ; Awesome extension!!!!
(require 'misc-eshell)                   ; Eshell
(require 'misc-ispell)                   ; Spell check
(require 'misc-ibuffer)                  ; Nice Ibuffer
(require 'misc-flymake)                  ; On-the-fly syntax checks
(require 'misc-navigation)               ; Fast navigation
(require 'misc-cscope)               	 ; xcope setting

;;; load Mac OS X config if needed, unfortunately, I don't need it ;-)
(when (string= system-type "darwin")
  (require 'misc-mac))

;;;;;;; Here are for vendors

(require 'autopair)
(setq autopair-blink nil)

(require 'whole-line-or-region)
(whole-line-or-region-mode)

;; Interactively Do hacks
(require 'ido-hacks)
(ido-hacks-mode 1)

(require 'smex)
(smex-initialize)

;; Textmate like find file
(require 'textmate)
(setq textmate-use-file-cache nil)

;; Colorful parenthesis
(require 'rainbow-delimiters)

;; Visible tree-like undo history
(require 'undo-tree)
(global-undo-tree-mode)

;; Popup window manager
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;; Turn off linum mode within some temp buffers
(require 'linum-off)

;;; Remove the minor mode line lighter
(hbin-remove-mm-lighter 'autopair-mode)
(hbin-remove-mm-lighter 'textmate-mode)
(hbin-remove-mm-lighter 'eproject-mode)
(hbin-remove-mm-lighter 'undo-tree-mode)
(hbin-remove-mm-lighter 'whole-line-or-region-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'zy-misc)

;;;;;; zy-misc.el END
