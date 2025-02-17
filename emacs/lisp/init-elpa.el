;;; init-elpa.el -- Config the elpa source. -*- lexical-binding:t -*-
;;; Commentary:
;;; init-elpa.el

;;; Code:

;; software source

(setq package-archives '(
    ("melpa" . "http://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/melpa/")
    ("gnu" . "http://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/gnu/")
    ("org" . "http://mirrors.sjtug.sjtu.edu.cn/emacs-elpa/org/")))

;; for package.el

(setq package-check-signature nil)
(require 'package) ;; package.el: init
(unless (bound-and-true-p package--initialized)
   (package-initialize)) ;; update index
(unless package-archive-contents
    (package-refresh-contents))

;; install use-package

(unless (package-installed-p 'use-package)
   (package-refresh-contents)
   (package-install 'use-package))

;; use-package setting:

(eval-and-compile
    (setq use-package-always-ensure t)
    (setq use-package-always-defer t)
    (setq use-package-always-demand nil)
    (setq use-package-expand-minimally t)
    (setq use-package-verbose t))

(provide 'init-elpa)

;; Local Variables:
;; coding: utf-8
;; End:

;;; init-elpa.el ends here
