;; misc-flymake.el --- Configuration for flymake
;;
;; Copyright (C) 2012 Huang Bin
;;
;; Author: Huang Bin <embrace.hbin@gmail.com>
;; Version: 1.0.0

;; This file is not part of GNU Emacs.

;;; License:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

(require 'flycheck)
(require 'flymake-cursor)

(hbin-remove-mm-lighter 'flycheck-mode)

;; Need to install external utilities for the following checkers:
;; CoffeeScript :: Install coffeelint.
;; PHP :: Install the PHP command line.
;; Python :: Install flake8, pyflakes or pylint.
;; Ruby :: Install Ruby.
;; Shell scripts :: Install Bash or Zsh depending on the type of shell file you want to check.
;; TeX/LaTeX :: Install chktex. Most TeX distributions, including TeXLive and MacTeX, already do this for you.
(add-hook 'coffee-mode-hook 'flycheck-mode)
(add-hook 'ruby-mode-hook   'flycheck-mode)
(add-hook 'python-mode-hook   'flycheck-mode)

(provide 'misc-flymake)
