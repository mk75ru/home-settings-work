;;Заготовка окон для проекта
(defun my-make-three-windows2 () 
  "Make three windows"
  (interactive)
  (split-window-vertically) 
  (other-window 1) 
  (eshell) 
  (rename-buffer "shell-first") 
  (other-window 1) 
  (put 'upcase-region 'disabled nil)
  )

(defun my-make-three-windows3 () 
  "Make three windows"
  (interactive)
  (split-window-vertically) 
  (split-window-horizontally)
  (other-window 1) 
  (other-window 1) 
  (eshell) 
  (rename-buffer "shell-first") 
  (other-window 1) 
  (put 'upcase-region 'disabled nil)
  )



;;Открываем проект communch-2
(defun my-open-communch-2 () 
  "Open project communch-2"
  (interactive)
  (my-make-three-windows2)
  (find-file "~/project_branch/communch-2/")
  (other-window 1) 
  (other-window 1) 
  )
;;Открываем проект communch
(defun my-open-communch () 
  "Open project communch2"
  (interactive)
  (my-make-three-windows2)
  (find-file "~/project_branch/communch/")
  (other-window 1) 
  (other-window 1) 
  )
;;---------------------------------------------------------------------------------------------
