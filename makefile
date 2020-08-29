all:
	@for f in .gitconfig .gitignore .vimrc; \
	do \
		if [[ $$f -nt ~/$$f ]]; then \
			echo cp -p $$f ~ ; \
			cp -p $$f ~ ; \
		fi; \
	done; true
