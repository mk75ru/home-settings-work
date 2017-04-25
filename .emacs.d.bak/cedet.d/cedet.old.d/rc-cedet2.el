(global-ede-mode 1)

;;; rc-cedet2.el ---


;; [(control return)] 'semantic-ia-complete-symbol-menu
;; "\C-c?" 'semantic-ia-complete-symbol
;; "\C-c>" 'semantic-complete-analyze-inline
;; "\C-c=" 'semantic-decoration-include-visit
;; "\C-cj" 'semantic-ia-fast-jump
;; "\C-cq" 'semantic-ia-show-doc
;; "\C-cs" 'semantic-ia-show-summary
;; "\C-cp" 'semantic-analyze-proto-impl-toggle  
;; "\C-ct" 'eassist-switch-h-cpp
;; "\C-xt" 'eassist-switch-h-cpp
;; "\C-ce" 'eassist-list-methods
;; "\C-c\C-r" 'semantic-symref

;;(global-set-key [f9] 'my/compile)




;;(load-file "~/emacs/cedet/common/cedet.el")
;;(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
(load-file "~/emacs/cedet/common/cedet.el")

(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)

(setq senator-minor-mode-name "SN")
(setq semantic-imenu-auto-rebuild-directory-indexes nil)
(global-srecode-minor-mode 1)
(global-semantic-mru-bookmark-mode 1)

(require 'semantic-decorate-include)

;; gcc setup
(require 'semantic-gcc)
;;Вы также можете явно задать дополнительные пути поиска подключаемых файлов, которые будут
;;использоваться при работе в определенном режиме. Для этого используется команда
;;semantic-add-system-include, которой передается два параметра - путь к заголовочным файлам, и имя
;;режима в котором этот путь будет использоваться. Например:
(semantic-add-system-include "/usr/local/arm9-crosstools/arm-linux/include" 'c++-mode)
(semantic-add-system-include "/usr/local/arm9-crosstools/arm-linux/include" 'c-mode)



;; smart complitions
(require 'semantic-ia)

(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local erlang-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))


(require 'eassist)

;; customisation of modes
(defun my/cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol)



  ;;
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)

  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cq" 'semantic-ia-show-doc)
  (local-set-key "\C-cs" 'semantic-ia-show-summary)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  )

  (global-set-key [C-ck] 'semantic-mrub-switch-tag)

;; (add-hook 'semantic-init-hooks 'my/cedet-hook)
(add-hook 'c-mode-common-hook 'my/cedet-hook)
(add-hook 'cpp-mode-common-hook 'my/cedet-hook)
(add-hook 'lisp-mode-hook 'my/cedet-hook)
(add-hook 'scheme-mode-hook 'my/cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'my/cedet-hook)
(add-hook 'erlang-mode-hook 'my/cedet-hook)

(defun my/c-mode-cedet-hook ()
  ;;(local-set-key "." 'semantic-complete-self-insert)
  ;;(local-set-key ">" 'semantic-complete-self-insert)
  (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  (local-set-key "\C-xt" 'eassist-switch-h-cpp)
  (local-set-key "\C-ce" 'eassist-list-methods)
  (local-set-key "\C-c\C-r" 'semantic-symref)
  )
(add-hook 'c-mode-common-hook 'my/c-mode-cedet-hook)

;; hooks, specific for semantic
(defun my/semantic-hook ()
;; (semantic-tag-folding-mode 1)
  (imenu-add-to-menubar "TAGS")
 )
(add-hook 'semantic-init-hooks 'my/semantic-hook)

(custom-set-variables
 '(semantic-idle-scheduler-idle-time 3)
 '(semantic-self-insert-show-completion-function (lambda nil (semantic-ia-complete-symbol-menu (point))))
 '(global-semantic-tag-folding-mode t nil (semantic-util-modes)))
(global-semantic-folding-mode 0)

;; gnu global support
(require 'semanticdb-global)
(semanticdb-enable-gnu-global-databases 'c-mode)
(semanticdb-enable-gnu-global-databases 'c++-mode)

;; ctags
;;(require 'semanticdb-ectag)
;;(semantic-load-enable-primary-exuberent-ctags-support)


;; (semantic-add-system-include "~/exp/include" 'c++-mode)
;; (semantic-add-system-include "~/exp/include" 'c-mode)

;; (setq boost-base-directory "~/exp/include/boost-1_40/")

;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;;              (concat boost-base-directory "/boost/config.hpp"))

;;
;;(global-semantic-idle-tag-highlight-mode 1)

;;; ede customization
(require 'semantic-lex-spp)
(global-ede-mode t)


;;communch project definition
;;(ede-cpp-root-project "communch"
;;                :name "communch project"
;;                :file "~/project_pranch/snap/Makefile"



;; cpp-tests project definition
;; (setq cpp-tests-project
;;       (ede-cpp-root-project "cpp-tests"
;;                             :file "~/projects/lang-exp/cpp/CMakeLists.txt"
;;                             :system-include-path '("/home/ott/exp/include"
;;                                                    boost-base-directory)
;;                             :local-variables (list
;;                                               (cons 'compile-command 'my/gen-cmake-debug-compile-string)
;;                                               )
;;                             ))

;; (setq squid-gsb-project
;;       (ede-cpp-root-project "squid-gsb"
;;                             :file "~/projects/squid-gsb/README"
;;                             :system-include-path '("/home/ott/exp/include"
;;                                                    boost-base-directory)
;;                             :local-variables (list
;;                                               (cons 'compile-command 'my/gen-cmake-debug-compile-string)
;;                                               )
;;                             ))
;; (setq arabica-project
;;       (ede-cpp-root-project "arabica"
;;                             :file "~/projects/arabica-devel/README"
;;                             :system-include-path '("/home/ott/exp/include"
;;                                                    boost-base-directory)
;;                             :local-variables (list
;;                                               (cons 'compile-command 'my/gen-std-compile-string)
;;                                               )
;;                             ))

;; my functions for EDE
(defun my/ede-get-local-var (fname var)
  "fetch given variable var from :local-variables of project of file fname"
  (let* ((current-dir (file-name-directory fname))
         (prj (ede-current-project current-dir)))
    (when prj
      (let* ((ov (oref prj local-variables))
            (lst (assoc var ov)))
        (when lst
          (cdr lst))))))

;; setup compile package
;; TODO: allow to specify function as compile-command
(require 'compile)
(setq compilation-disable-input nil)
(setq compilation-scroll-output t)
(setq mode-compile-always-save-buffer-p t)

(defun my/compile ()
  "Saves all unsaved buffers, and runs 'compile'."
  (interactive)
  (save-some-buffers t)
  (let* ((r (my/ede-get-local-var
             (or (buffer-file-name (current-buffer)) default-directory)
             'compile-command))
         (cmd (if (functionp r) (funcall r) r)))
;;    (message "AA: %s" cmd)
    (set (make-local-variable 'compile-command) (or cmd compile-command))
    (compile compile-command)))

(global-set-key [f9] 'my/compile)

;;
(defun my/gen-std-compile-string ()
  "Generates compile string for compiling CMake project in debug mode"
  (let* ((current-dir (file-name-directory
                       (or (buffer-file-name (current-buffer)) default-directory)))
         (prj (ede-current-project current-dir))
         (root-dir (ede-project-root-directory prj))
         )
;;     (concat "cd " root-dir "; make -j2")))
     (concat "cd " root-dir "; ./build")))


;;
;; (defun my/gen-cmake-debug-compile-string ()
;;   "Generates compile string for compiling CMake project in debug mode"
;;   (let* ((current-dir (file-name-directory
;;                        (or (buffer-file-name (current-buffer)) default-directory)))
;;          (prj (ede-current-project current-dir))
;;          (root-dir (ede-project-root-directory prj))
;;          (subdir "")
;;          )
;;     (when (string-match root-dir current-dir)
;;       (setf subdir (substring current-dir (match-end 0))))
;;     (concat "cd " root-dir "Debug/" "; make -j2")))
;;    (concat "cd " root-dir "Debug/" subdir "; make -j3")))

;; Example, Qt customization
;; (setq qt4-base-dir "/usr/include/qt4")
;; (setq qt4-gui-dir (concat qt4-base-dir "/QtGui"))
;; (semantic-add-system-include qt4-base-dir 'c++-mode)
;; (semantic-add-system-include qt4-gui-dir 'c++-mode)
;; (add-to-list 'auto-mode-alist (cons qt4-base-dir 'c++-mode))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig-large.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qglobal.h"))

;;; emacs-rc-cedet.el ends here





(global-ede-mode t)
(semantic-load-enable-excessive-code-helpers)
(require 'semantic-ia)

(require 'semantic-gcc)
(semantic-add-system-include "~/dvl/prj" 'c++-mode)

(setq-mode-local c-mode semanticdb-find-default-throttle
                               '(project unloaded system recursive))

(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)
