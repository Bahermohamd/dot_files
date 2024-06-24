(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(custom-enabled-themes '(catppuccin))
 '(custom-safe-themes
   '("4825b816a58680d1da5665f8776234d4aefce7908594bea75ec9d7e3dc429753" "a1c18db2838b593fba371cb2623abd8f7644a7811ac53c6530eebdf8b9a25a8d" "e9d47d6d41e42a8313c81995a60b2af6588e9f01a1cf19ca42669a7ffd5c2fde" default))
 '(fci-rule-color "#383838")
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(catppuccin-theme resize-window auto-complete cyberpunk-theme color-theme-sanityinc-solarized smex ac-c-headers auto-complete-c-headers yasnippet)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(ido-mode)


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


(global-set-key (kbd "C-c C-v") 'uncomment-region)
(global-set-key (kbd "C-c C-c") 'comment-region)

(setq compilation-ask-about-save nil)
(global-set-key [f5] 'compile)

(load "~/.emacs.d/init-packages")

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

(defun my:ac-c-headers-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/include/c++/10"))

(add-hook 'c++-mode-hook 'my:ac-c-headers-init)
(add-hook 'c-mode-hook 'my:ac-c-headers-init)



(add-to-list 'default-frame-alist '(fullscreen . maximized))




(setq catppuccin-flavor 'mocha)
(catppuccin-reload)
