(require 'color-theme)


(require 'tabbar)
(tabbar-mode)

;;####### Use "C-x 4 <direction>" to swap tabs in <direction> ####                                                                              
 (global-set-key (kbd "C-x 4 <left>") 'tabbar-backward-tab)
 (global-set-key (kbd "C-x 4 <right>") 'tabbar-forward-tab)
 (global-set-key (kbd "C-x 4 <up>") 'tabbar-forward-group)
 (global-set-key (kbd "C-x 4 <down>") 'tabbar-backward-group)
 (global-set-key (kbd "C-x 4 h") 'tabbar-backward-tab)
 (global-set-key (kbd "C-x 4 l") 'tabbar-forward-tab)
 (global-set-key (kbd "C-x 4 k") 'tabbar-forward-group)
 (global-set-key (kbd "C-x 4 j") 'tabbar-backward-group)


;;####### Use "C-x 5 <direction>" to swap window in <direction> ####                                                                            
 (global-set-key (kbd "C-x 5 <left>") 'windmove-left)
 (global-set-key (kbd "C-x 5 <right>") 'windmove-right)
 (global-set-key (kbd "C-x 5 <up>") 'windmove-up)
 (global-set-key (kbd "C-x 5 <down>") 'windmove-down)
 (global-set-key (kbd "C-x 5 h") 'windmove-left)
 (global-set-key (kbd "C-x 5 l") 'windmove-right)
 (global-set-key (kbd "C-x 5 k") 'windmove-up)
 (global-set-key (kbd "C-x 5 j") 'windmove-down)

;;###### Use "C-<" and "C->" to move frame back and forward #######                                                                             
 (global-set-key (kbd "C-<") 'previous-multiframe-window)
 (global-set-key (kbd "C->") 'next-multiframe-window)

;; Custom hotkeys for editing ####################                                                                                              
(global-set-key (kbd "C-[ ;")  'comment-region)
(global-set-key (kbd "C-[ :")  'uncomment-region)


(defun my-tabbar-buffer-groups ()
   "Returns the name of the tab group names the current buffer belongs to.                                                                      
 There are two groups: Emacs buffers (those whose name starts with “*”, plus                                                                    
 dired buffers), and the rest.  This works at least with Emacs v24.2 using                                                                      
 tabbar.el v1.7."
   (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
               ((eq major-mode 'dired-mode) "emacs")
               (t "user"))))
 (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(defun swap-to-buffer-and-max ()
  "Swaps to the other buffer and maximizes it"
  (interactive)
  (other-window -1)
  (delete-other-windows)
)
;; #########################        
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(vc-follow-symlinks t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
