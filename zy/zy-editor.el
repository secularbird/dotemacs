;;; Code:

;;;;;;;; Here are for defaults

;; mode line 设定
(line-number-mode t)                     ; 显示行号
(column-number-mode t)                   ; 显示列号
(size-indication-mode t)                 ; 显示文件大小

(global-auto-revert-mode t)              ; 当 Buffer 访问的文件修改时，自动更新 Buffer 中的内容
(delete-selection-mode t)                ; 有选择域时，先删除再插入

(require 'linum)
(setq linum-format "%4d ")               ; 自定义行号格式
(global-linum-mode 1)                    ; 显示 Linum 行号

(show-paren-mode t)                      ; 显示匹配括号
(setq show-paren-delay 0)                ; 匹配无延时
(setq show-paren-style 'parenthesis)     ; 只高亮显示匹配的括号

(mouse-avoidance-mode 'banish)           ; 鼠标自动移动到右上角，以免挡住视线
(fset 'yes-or-no-p 'y-or-n-p)            ; 以 y/n 代表 yes/no

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)      ; 空格代替制表符
(setq-default imenu-auto-rescan t)       ; Rescanning Imenu automatically
(setq-default truncate-lines t)          ; Disable line wrap

(setq suggest-key-bindings 1)            ; 当使用命令后，过 1 秒显示绑定的键
(setq require-final-newline t)           ; 存盘的时候，要求最后一个是换行符

(setq delete-by-moving-to-trash t)       ; 删除的文件放到回收站
(setq dired-recursive-deletes t)         ; 允许删除非空文件夹
(setq dired-recursive-copies t)          ; 允许复制非空文件夹

;; 平滑滚动
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; Interactively Do
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10
      ido-max-directory-size 100000
      ido-default-file-method 'selected-window)

;; Ido 匹配时,忽略某些文件
(setq ido-ignore-extensions t)

;; Minibuffer 补全
(icomplete-mode +1)

;; 存盘前删除行末多余的空格/空行
(add-hook 'before-save-hook (lambda () (whitespace-cleanup)))

;; 存盘前添加 Time-stamp
(setq time-stamp-active t                ; do enable time-stamps
      time-stamp-line-limit 10           ; check first 10 buffer lines for Time-stamp: <>
      time-stamp-format "%04y-%02m-%02d %02H:%02M:%02S (%u)") ; date format
(add-hook 'write-file-hooks 'time-stamp) ; update when saving

;; Buffer 重名时，自动更改名字以区别
(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t)
(setq uniquify-ignore-buffers-re "^\\*")

;; 系统文件编码统一为 UTF-8，文件格式为 unix (LF)
(require 'un-define "un-define" t)
(set-buffer-file-coding-system 'utf-8 'utf-8-unix)
(set-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(prefer-coding-system 'utf-8-unix)
(set-default buffer-file-coding-system 'utf-8-unix)

;; Shared clipboard with other X clients
(when (< emacs-major-version 24)
  (setq x-select-enable-clipboard t
        interprogram-paste-function
        'x-cut-buffer-or-selection-value))

;;osx should using pbpaste and pbcopy to share clipboard
(defun copy-from-osx ()
	(shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
	(let ((process-connection-type nil))
	(let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
	(process-send-string proc text)
	(process-send-eof proc))))


(when (string= system-type "darwin")
	(setq interprogram-cut-function 'paste-to-osx)
	(setq interprogram-paste-function 'copy-from-osx))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'zy-editor)

;;;;;;; zy-editor.el END
