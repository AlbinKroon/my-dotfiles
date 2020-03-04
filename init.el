;;; package --- Summary:
;;; Commentary:
;;; Code:
;;; Bootstrapping use-package
(require 'package)
(setq package-enable-at-startup nil)

(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
			 ("org"   . "https://orgmode.org/elpa/")))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (add-to-list 'load-path "~/.emacs.d/elpa/use-package-2.4/")
  (require 'use-package))

(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (lsp-mode dracula-theme rainbow-mode magit org-bullets-mode org-bullets flycheck yasnippet-snippets yasnippet hungry-delete which-key beacon expand-region company nyan-mode darkokai-theme use-package python)))
 '(show-paren-style (quote mixed))
 '(show-paren-when-point-inside-paren t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
