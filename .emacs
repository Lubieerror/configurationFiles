(load-theme 'wombat)

(setq frame-title-format "emacs")

(menu-bar-mode 1)

(tool-bar-mode -1)

(scroll-bar-mode 1)

(set-default 'cursor-type 'box)

(ido-mode)

(column-number-mode)

(global-hl-line-mode -1)

(winner-mode t)

(windmove-default-keybindings)

(require 'package)

(setq package-list '(neotree nlinum smex autopair autodisass-llvm-bitcode autodisass-java-bytecode auto-complete-clang auto-complete-c-headers aria2 ac-html ac-clang ac-dcd))

(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/")
	     t)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/")
	     t)
(add-to-list 'package-archives
	     '("elpa" . "http://tromey.com/elpa/")
	     t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/")
	     t)

	     
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents)) 

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (neotree nlinum smex autopair autodisass-llvm-bitcode autodisass-java-bytecode auto-complete-clang auto-complete-c-headers aria2 ac-html ac-clang ac-dcd))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(global-set-key (kbd "M-x") 'smex)

(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(ac-config-default)

(nlinum-mode)

;; https://www.youtube.com/watch?v=FRu8SRWuUko

(neotree-toggle)

(global-set-key [f8] 'neotree-toggle) 
