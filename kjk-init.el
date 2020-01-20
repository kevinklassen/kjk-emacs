;; Kevin's custom init file

;; Add line at column 80
(require 'fill-column-indicator)
(setq fci-rule-column 80)

;; Remove tool bar and scroll bar because they're ugly
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Add path to custom functions
(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Key bindings
(require 'xah-fly-keys)
(xah-fly-keys-set-layout "qwerty")
(xah-fly-keys 1)

;; My custom keymap
(define-prefix-command 'kjk-keymap)
(define-key kjk-keymap (kbd "SPC") 'save-buffers-kill-terminal)
(define-key kjk-keymap (kbd "f") 'find-file)
(define-key kjk-keymap (kbd "n") 'xah-new-empty-buffer)
(define-key kjk-keymap (kbd "k") 'kill-buffer)
(define-key kjk-keymap (kbd "l") 'list-buffers)
(define-key kjk-keymap (kbd "c") 'fci-mode)
(define-key xah-fly-leader-key-map (kbd "SPC") kjk-keymap) ;; keymap leader key

;; ESS custom keymap
(define-prefix-command 'kjk-ess-keymap)
(define-key kjk-ess-keymap (kbd "r") 'run-ess-r)
(define-key kjk-ess-keymap (kbd "f") 'ess-request-a-process)
(define-key xah-fly-leader-key-map (kbd "e") kjk-ess-keymap)

