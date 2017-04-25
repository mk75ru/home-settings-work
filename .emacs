
;; Personal settings for Emacs.


;;C++ / Python Development Environment for Emacs 
;;(load-file "~/.emacs.d/emacs/init.el")

;;helm-google Фиг знает для чего это мне
;;(global-set-key (kbd "C-h C--") 'helm-google)
;;(setq browse-url-browser-function 'eww-browse-url)

;;magit 
(autoload 'magit-status "magit" nil t)
(global-set-key "\C-xt" 'magit-status)

;;fb2 
(load-file "~/.emacs.d/fb2.d/fb2.el")

;;Настройка внешнего вида редактора 
(load-file "~/.emacs.d/faceemacs.d/faceemacs.el")

;;Сохранение сеанса
(load-file "~/.emacs.d/savesession.d/savesession.el")

;;Cedet
;;(load-file "~/.emacs.d/cedet.d/cedet.1.1.d/cedet-1.1-startup.el")
;;(load-file "/home/miha/.emacs.d/cedet.d/cedet.old.d/rc-cedet2.el")
;;TMP (load-file "~/.emacs.d/cedet.d/cedet-bzr.d/emacs-rc-cedet.el")


;; ECB
;; (load-file "~/.emacs.d/ecb.d/ecb.el")

;;Поиск парной скобки
(load-file "~/.emacs.d/matchparen.d/matchparen.el")

;;Открываем проект вызовом функции
;;(load-file "~/.emacs.d/myproject_old.d/myproject_old.el")

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


;; yasnippet
;; (load-file "/home/miha/.emacs.d/yasnippet.d/yasnippet.el")

;;; auto complete mod
;;(load-file "/home/miha/.emacs.d/autocomplete-clang.d/auto-complete-clang.el")

;;(load-file "/home/miha/.emacs.d/valgrind.el")




;;Компиляция 
;;команда по умолчанию для M-x compile
;;(setq  compile-command "/home/miha/project_branch/branch_projects_r/snap/build" )

;;Регистры 
;;Если вы часто обращаетесь к определенным именам файлов, вам будет удобно поме-
;;стить эти имена в регистры. Вот код на Лиспе, используемый для записи имени файла в регистр:
;;(set-register ?z '(file . "/home/miha/project_branch/create_tar_arch/111"))

;; Lisp
;;(load-file "~/.emacs.d/lisp.d/lisp.el")

;;Русификация 
;;(load-file "~/.emacs.d/rus.d/rus.el")

;;Переключение м/у буферами ibuffer  
;;(load-file "~/.emacs.d/ibuffer.d/ibuffer.el")

;;IDO
;;(require 'ido)
;;(ido-mode t)

;;jabber
;;(require 'bitlbee)




;;jenkins  butler
;;(require 'butler)
;;(add-to-list butler-servers
;;             '(jenkins "SERVER-NAME"
;;                       (server-address . "http://jenkins.incom.tomsk.ru")
;;                       (server-user . "krolikov")
;;                       (server-password . "ybpz11")))
;;(add-to-list butler-servers
;;;             '(jenkins "SERVER-NAME"
;;                       (server-address . "http://jenkins.incom.tomsk.ru")
;;                       (auth-file . "~/.authinfo.gpg")))



;;jenkins 
;;(require 'jenkins-watch)
;;(add-hook 'after-init-hook 
;;              (lambda () (require 'jenkins-watch)))
;;
;;(setq jenkins-api-url "http://jenkins.incom.tomsk.ru/view/ipc/job/ipctests/")
;;(jenkins-watch-start)
;;(custom-set-variables


 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

;; '(ansi-color-names-vector ["black" "red" "green" "yellow" "blue" "magenta" "cyan" "white"])
;; '(custom-safe-themes (quote ("8bddd75160270264e1e2003adae67906b949358a92ed15ae4ea61be6cef03a4f" default)))
;; '(eide-custom-color-theme (quote dark))
;; '(graphviz-dot-dot-program "dot")
;; '(jenkins-login-url krolikov))
;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

;;(setq-default gdb-many-windows t)

;;eide
;;(add-to-list 'load-path "~/.emacs.d/site-lisp/")
;;(require 'eide)
;;(eide-start)





;; Проверка орфографии
(setq-default ispell-program-name "aspell")
(setq ispell-dictionary "russian") ; русский словарь для ispell
(global-set-key "\e\ed" 'ispell-change-dictionary) ; изменить словарь
(global-set-key "\e\ef" 'flyspell-mode); вкл/выкл проверки орфографии "на ходу"
(global-set-key "\e\es" 'ispell-buffer); проверить орфографию в текущем буфере

;; подвсетка скобок
(show-paren-mode t)

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

;;; Подсветка текущей строки
;;(global-hl-line-mode 1)

;;; Убрать splash-screen
;;(setq inhibit-startup-message t)

;;ansi-term
;;(setq ansi-term-color-vector [unspecified "#3f3f3f" "#cc9393" "#7f9f7f" "#f0dfaf" "#8cd0d3" "#dc8cc3" "#93e0e3" "#dcdccc"])
;;(setq ansi-term-color-vector [unspecified “black” “red3” “lime green” “yellow3” “DeepSkyBlue?3” “magenta3” “cyan3” “white”])



(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


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


(setq org-agenda-files (list  
"~/org/TODO.org.org"
"~/org/TODO.work.org"
"~/org/TODO.gentoo.org" 
"~/org/test.org"  
))


;;(add-hook 'org-mode-hook (lambda () 
;;                           (set-fill-column 80))) 


;;(start-process "" nil "xdg-open" "http://google.com")

;;(setq shr-external-browser "chromium")

;;(start-process "" nil "xdg-open" "http://google.com")


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

;;cmake-ide
;;newcom (require 'rtags) ;; optional, must have rtags installed
;;newcom (cmake-ide-setup)
