;;; init-company.el --- Settings for company. -*- lexical-binding:t -*-

;;; Commentary:

;;; Code:

(use-package company
  :diminish (company-mode " Cmp.")
  :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
  :hook (after-init . global-company-mode)
  :config (setq company-dabbrev-code-everywhere t
	        company-dabbrev-code-modes t
	        company-dabbrev-code-other-buffers 'all
	        company-dabbrev-downcase nil
	        company-dabbrev-ignore-case t
	        company-dabbrev-other-buffers 'all
	        company-require-match nil
	        company-minimum-prefix-length 1
	        company-show-numbers t
	        company-tooltip-limit 20
	        company-idle-delay 0
	        company-echo-delay 0
	        company-tooltip-offset-display 'scrollbar
	        company-begin-commands '(self-insert-command))
  (eval-after-load 'company
    '(add-to-list 'company-backends
                  '(company-abbrev company-yasnippet company-capf))))

;; Better sorting and filtering
(use-package company-prescient
  :init (company-prescient-mode 1))

(provide 'init-company)
;;; init-company.el ends here
