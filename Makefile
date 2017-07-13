.PHONY: test

test:
	@rm -f .test-org-id-locations
	emacs -Q --batch -q \
		-L . \
		-l ob-coffeescript.el \
		-l test-ob-coffeescript.el \
		--eval "(progn \
	              (setq org-confirm-babel-evaluate nil) \
	              (org-babel-do-load-languages \
	                'org-babel-load-languages '((emacs-lisp . t) \
	                                            (sh . t) \
	                                            (org . t) \
	                                            (js . t) \
	                                            (coffee . t))))" \
	    -f ob-coffee-test-runall
