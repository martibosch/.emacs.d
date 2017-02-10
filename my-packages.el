(require 'package)
;; (add-to-list 'package-archives
;;              '("stable-melpa" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t) ;; for `readline-complete`
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/"))
(package-initialize)

(defvar required-packages
  '(
    auctex
    auto-complete
    better-defaults
    ein
    elpy
    exec-path-from-shell
    flycheck
    magit
    py-autopep8
    readline-complete
    rvm
    scss-mode
    solarized-theme
    sphinx-doc
    web-mode
    yasnippet
    zenburn-theme
  ) "a list of packages to ensure are installed at launch.")

(require 'cl)

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))
