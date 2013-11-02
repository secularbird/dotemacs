(progn
	(add-hook 'python-mode-hook guess-style-guess-tabs-mode)
   	(add-hook 'python-mode-hook (lambda ()
    	                              (when indent-tabs-mode
        	                            (guess-style-guess-tab-width)))
  )

(provide 'prog-python)
