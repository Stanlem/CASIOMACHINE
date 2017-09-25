
(require 'org)
(if (window-system)
    (split-window-right (floor (* 0.85 (window-width)))))

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))


(keyboard-translate ?\( ?\[)
(keyboard-translate ?\[ ?\()
(keyboard-translate ?\) ?\])
(keyboard-translate ?\] ?\))

(toggle-frame-fullscreen)

(add-hook 'lisp-interaction-mode-hook 'slime-mode)
(add-hook 'lisp-interaction-mode-hook 'electric-pair-mode)
(add-hook 'emacs-lisp-mode-hook 'electric-pair-mode)
(add-hook 'lisp-mode-hook 'electric-pair-mode)
(add-hook 'lisp-mode-hook 'slime-mode)

(setq Tex-auto-save t)
(setq TeX-parse-self t)
(setq org-export-with-LaTeX-fragments "dvipng")
(setq org-return-follows-link t)

(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook  'emmet-mode)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(defalias 'yes-or-no-p 'y-or-n-p)
(global-set-key (kbd "M-p") 'ace-window)

(defun halt ()
  (interactive)
  (save-some-buffers)
  (kill-emacs))

(defun lisp ()
  (interactive)
  (split-window-horizontally)
  (find-file "~/.emacs.d/casio.cl")
  (sly))
