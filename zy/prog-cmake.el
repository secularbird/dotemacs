
(require 'cmake-mode)
(progn
  (autoload 'cmake-mode "cmake-mode" "cmake editing mode." t)
  (setq auto-mode-alist
        (append '(("CMakeLists\\.txt\\'" . cmake-mode)
                  ("\\.cmake\\'" . cmake-mode))
                auto-mode-alist))
)

(provide 'prog-cmake)
