;; Personal settings for Emacs.

;;Перезагрузка .emacs:  M-x load-file

;;Настройка внешнего вида редактора 

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-file "~/.emacs.d/faceemacs.d/faceemacs.el")

;;Сохранение сеанса
(load-file "~/.emacs.d/savesession.d/savesession.el")

;;magit 
(autoload 'magit-status "magit" nil t)
(global-set-key "\C-xt" 'magit-status)

;;fb2 
(load-file "~/.emacs.d/fb2.d/fb2.el")

;;Поиск парной скобки
(load-file "~/.emacs.d/matchparen.d/matchparen.el")
;; подвсетка скобок
(show-paren-mode t)


;;Перемещение между окнами
;;Перемещение по окнам при помощи клавиш  <S-up>, <S-down>, <S-left>, <S-right>
(load-file "/home/miha/.emacs.d/window.d/window-number.el")

;;Управляем размером окна
;;изменять размеры окна, по умолчанию, можно мышкой, для этого нужно убирать руку от клавиатуры. 
;;а это удобно? я тоже так думаю. добавлем следущее в .emacs.
;;как видно из keymap' ом, 'ctrl + alt + \arrow keys\' резайзит окна. 
(load-file "/home/miha/.emacs.d/window.d/resize-window.el")

;;Включаем tramp
(require 'tramp)
(setq tramp-default-method "ssh")

;;Резервные копии
(load-file "/home/miha/.emacs.d/backups.d/backups.el")
                                                                                                            
;;w3m
(load-file "/home/miha/.emacs.d/w3m.d/w3m.el")

;;автоопределение кодировки файлов
(load-file "/home/miha/.emacs.d/enca-detect-coding.d/enca-detect-coding.el")

;; doxymacs
(load-file "/home/miha/.emacs.d/doxymacs.d/doxymacs.el")

;; Emacs is not a package manager, and here we load its package manager!  
(load-file "/home/miha/.emacs.d/package.d/package.el")

;; Проверка орфографии
(setq-default ispell-program-name "aspell")
(setq ispell-dictionary "russian") ; русский словарь для ispell
(global-set-key "\e\ed" 'ispell-change-dictionary) ; изменить словарь
(global-set-key "\e\ef" 'flyspell-mode); вкл/выкл проверки орфографии "на ходу"
(global-set-key "\e\es" 'ispell-buffer); проверить орфографию в текущем буфере


;;; режим Text
(setq default-major-mode  'text-mode)
;;; режим Auto Fill
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)

(add-hook 'org-mode-hook  'turn-on-auto-fill)                           
(add-hook 'c-mode-common-hook  'turn-on-auto-fill)                           
(add-hook 'c-mode-hook  'turn-on-auto-fill)                           
(add-hook 'c++-mode-hook  'turn-on-auto-fill) 

                          
 (add-hook 'c++-mode-hook '(lambda ()
     (setq fill-column 200)))

 (add-hook 'c-mode-common-hook '(lambda ()
     (setq fill-column 200)))

 (add-hook 'c-mode-hook '(lambda ()
     (setq fill-column 200)))
;; длина строки в текстовом режиме в 75 символов
 (setq fill-column 200)

;;org-mode
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)
(setq org-agenda-files (list  
  "~/org/TODO.org.org"
  "~/org/TODO.work.org"
  "~/org/TODO.gentoo.org" 
  "~/org/test.org"  
))
(setq org-capture-templates
      (quote (
                    ("x" "org-protocol" entry (file "~/web.org")
                                   "* TODO Review %c\n%U\n%i\n" :immediate-finish))))

(setq special-display-buffer-names
      '("*grep*"))

(setq special-display-buffer-names
      '("*compilation*"))

;;Контроль версий ???
(defun toogle-vc ()
  "Включение и отключение проверки использования контроля версий"
  (interactive)
  (if (eq vc-handled-backends nil)
      (progn
    (setq vc-handled-backends '(git))
    (message "Включено отслеживание version control"))
    (progn
      (setq vc-handled-backends nil)
      (message "Отключен отслеживание Version control"))))

(global-set-key "\C-c\C-a\C-v" 'toogle-vc)



;;chess  
(let ((chessdir (expand-file-name
		 "~/emacs/lisp/chess")))
  (when (file-directory-p chessdir)
    (add-to-list 'load-path chessdir)
    (setq chess-sound-directory (concat chessdir "/sounds"))))
(when (load "chess-auto" t)
  (setq
   chess-default-display 'chess-plain
   chess-ics-server-list '(("freechess.org" 5000 "mlang"))
   chess-plain-black-square-char 13
   chess-plain-draw-border t
   chess-plain-white-square-char 15
   chess-plain-spacing 0))


;;custom-set-variables 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(save-place t nil (saveplace))
 '(show-paren-mode t))

;;custom-set-faces 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "fixed" :foundry "misc" :slant normal :weight normal :height 78 :width normal)))))

;;compilation ------------------------------------------------- 
(add-to-list 'same-window-buffer-names "*compilation*") 
(global-set-key (kbd "<f5>") #'compile)
;;--------------------------------------------------------------



