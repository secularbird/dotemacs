(progn
	(require 'gas-mode)
	(add-to-list 'auto-mode-alist '("\\.S$" . gas-mode))
)

(provide 'prog-gas)
