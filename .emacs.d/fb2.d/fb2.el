;;(defun bread-mode()                                        
;;  userpic  (interactive)                                            
;;  (sgml-mode)                                              
;;  (sgml-tags-invisible 0)                                  
;;  (visual-line-mode)                                     	
;;  (setq mode-line-format nil)                              
;;  (view-mode))         


;;(add-to-list 'auto-mode-alist '("\\.fb2$" . bread-mode)) 


;;For ansi-term
                                                                                       
(add-hook 'term-mode-hook                                         
	  (function                                               
	   (lambda ()                                             
	     (define-key term-raw-map [?\C-c prior] 'scroll-down) 
	     (define-key term-raw-map [?\C-c next] 'scroll-up)))) 



;Авто определение формата по расширению файла
(add-to-list 'auto-mode-alist '(".fb2$" . fb2-mode-view))

;Функция для файлов .fb2 в режиме просмотра
 (defun fb2-mode-view()
     (vc-toggle-read-only)
     (interactive)
     (sgml-mode)
     (sgml-tags-invisible 0))

;Функция для файлов .fb2 в режиме редактирования
(defun fb2-mode-edit()
     (vc-toggle-read-only nil)
     (interactive)
     (sgml-mode)
     (sgml-tags-invisible 0))
