(require 'package)

(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)


; list the packages you want
(setq package-list
      '( yasnippet windresize auto-complete auto-complete-c-headers ac-c-headers smex color-theme-sanityinc-solarized cyberpunk-theme))


; activate all the packages
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
