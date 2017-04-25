;;-----------------------------------------------------------
;;Русификация 
;;-----------------------------------------------------------
;; Minimal settings for users of Emacs working in 
;; Russian (KOI8-R) environment.
;; 
;; ALT Linux Team, February 2002.
;;(set-language-environment "Cyrillic-KOI8")

;; The following lines make the corresponding 
;; parameters independent of the current language-environment:
;; if you change language-environment, they won't be changed;
;; but if you comment out some of them, they will follow the
;; language-environment parameter:
;;(set-terminal-coding-system 'koi8-r)
;;(set-keyboard-coding-system 'koi8-r)
;; This could help for transferring data from bad old apps
;;(set-selection-coding-system 'koi8-r)

;; End of the language environment settings.
;;-----------------------------------------------------------

;;---------------------------------------------------------------
;;Русификация 2 
;;---------------------------------------------------------------
;;Чтобы появилась возможность вводить текст на русском языке, 
;;необходимо добавить туда следующие строки 
;;(переключение на русский язык с помощью сочетания клавиш C-\):
;;(set-language-environment "Cyrillic-KOI8")
;;(set-default-buffer-file-coding-system 'koi8-r)
;;(set-default-file-coding-system 'koi8-r)
;;(set 'default-input-method "cyrillic-jcuken")
;;(put-charset-property 'cyrillic-iso8859-5
;;                      'preferred-coding-system 'koi8-r)
;;---------------------------------------------------------------
