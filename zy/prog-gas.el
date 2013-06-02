(require 'gas-mode)
(progn
  (autoload 'gas-mode "gas-mode" "gas editing mode." t)
  (setq auto-mode-alist
        (append '(("\\.[Ss]\\'" . gas-mode))
                auto-mode-alist))	
)

(provide 'prog-gas)
