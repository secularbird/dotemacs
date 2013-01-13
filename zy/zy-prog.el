;;;###autoload
(progn
  (defun hbin-modify-syntax ()
    (modify-syntax-entry ?_ "w")
    (modify-syntax-entry ?- "w"))

  (defun prog-common-setting ()
    "Common settings for programming."
    (hbin-modify-syntax)
    (turn-on-watchwords)
    (turn-on-autopair-mode)
    (turn-on-textmate-mode)
    (turn-on-rainbow-delimiters-mode)
    (local-set-key (kbd "C-M-h") 'backward-kill-word)
    (local-set-key (kbd "C-c C-c") 'whole-line-or-region-comment-dwim-2))

  (add-hook 'prog-mode-hook 'prog-common-setting))

;;;  Enhanced programming languages
(require 'prog-js)
(require 'prog-lua)
(require 'prog-web)
(require 'prog-lisp)
(require 'prog-scss)
(require 'prog-haml)
(require 'prog-yaml)
(require 'prog-ruby)
(require 'prog-rails)
(require 'prog-coffee)
(require 'prog-python)
(require 'prog-feature)

;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'zy-prog)

;;;;;; zy-prog.el END
