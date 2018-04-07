; evil installation

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(require 'evil)
(evil-mode 1)

(defun toggle-evil-mode()
    (interactive)
    (if evil-mode (evil-mode 0) (evil-mode 1))
)

;(global-set-key (kbd "C-c t") 'toggle-evil-mode)
