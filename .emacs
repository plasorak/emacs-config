;; Make sure package is here
(require 'package)
(setq package-enable-at-startup nil)

;; Add MELPA to the list of archives
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
;; Reinistialize the list of available packages
(package-initialize)
(package-refresh-contents)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package darkokai-theme
  :ensure t
  :config (load-theme 'darkokai t))

(org-babel-load-file (expand-file-name (file-chase-links "~/.emacs.d/config.org")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-clang-executable "/usr/local/Cellar/llvm/10.0.0_3/bin/clang")
 '(custom-safe-themes
   (quote
    ("6ee6f99dc6219b65f67e04149c79ea316ca4bcd769a9e904030d38908fd7ccf9" default)))
 '(font-latex-math-environments
   (quote
    ("tikzcd" "display" "displaymath" "equation" "eqnarray" "gather" "multline" "align" "alignat" "xalignat" "dmath")))
 '(package-selected-packages
   (quote
    (atomic-chrome ess golden-ratio matlab sos nyan-mode company-math auctex disable-mouse magit ido-hacks ws-butler pdf-tools ggtags hungry-delete smartparens flycheck cmake company-irony rainbow rainbow-delimiters-mode expand-region mark-multiple swiper popup-kill-ring symon diminish spaceline dashboard rainbow-delimiters sudo-edit switch-window avy ido-vertical-mode beacon which-key use-package evil ido-completing-read+ flx-ido cmake-project cmake-ide matlab-mode cmake-mode yasnippet multiple-cursors darkokai-theme auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)
(put 'erase-buffer 'disabled nil)
(put 'downcase-region 'disabled nil)
