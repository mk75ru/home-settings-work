;;(add-to-list 'load-path "~/.emacs.d/ecb-2.40/") 
;;*(require 'ecb)
;;*(global-set-key (kbd "\e\el") 'ecb-toggle-ecb-windows)
;;*(global-set-key (kbd "C-x C-a") 'ecb-activate)
;;*(global-set-key (kbd "C-x C-q") 'ecb-deactivate)
;;*(global-set-key "\M-m" 'ecb-goto-window-methods)
;;*;Перезагрузка окна методов после каждого сохранения
;;*(setq imenu-auto-rescan 1)
;;*;Длинные строки всегда разбивать при отображении
;;*(setq truncate-lines nil)
;;*(setq truncate-partial-width-windows nil)

;;*(custom-set-variables
;;*  ;; custom-set-variables was added by Custom.
;;*  ;; If you edit it by hand, you could mess it up, so be careful.
;;*; Your init file should contain only one such instance.
;;*  ;; If there is more than one, they won't work right.
;;* '(ecb-compile-window-height 10)
;;* '(ecb-compile-window-width (quote edit-window))
;;* '(ecb-options-version "2.32")
;;* '(ecb-prescan-directories-for-emptyness nil)
;;* '(ecb-tip-of-the-day nil))

;;*(custom-set-faces
;;*  ;; custom-set-faces was added by Custom.
;;*  ;; If you edit it by hand, you could mess it up, so be careful.
;;*  ;; Your init file should contain only one such instance.
;;*  ;; If there is more than one, they won't work right.
;;* )



;; Load ECB
;;*(add-to-list 'load-path "~/.emacs.d/ecb")
(require 'ecb-autoloads)
(global-set-key (kbd "C-x p") 'ecb-activate)
(global-set-key (kbd "C-x j") 'ecb-deactivate)
(global-set-key (kbd "C-x ,") 'ecb-toggle-ecb-windows)
(global-set-key (kbd "\e\eg") 'goto-line)
(global-set-key [?\M-g] 'goto-line)
(define-key global-map (kbd "C-<tab>") 'workspace-controller)
(setq ecb-tip-of-the-day nil)
(setq ecb-prescan-directories-for-emptyness nil)
