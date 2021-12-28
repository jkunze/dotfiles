FILES= .bash_profile .bashrc .gitconfig .gitignore .vimrc
DIRS=  arka .ssh

# Make dotfiles "active" by copying them to the home directory. Of course the
# changes won't be "live" yet until you "source" them or, better, logout and
# login again. The --info flag controls message verbosity.

all:
	@rsync --info=NAME -a $(FILES) $(DIRS) $(HOME)
	@echo "Now to update N2T skel/ files, 'cd n2t_create; make update_basicfiles'."

#xall:
#	@for f in .gitconfig .gitignore .vimrc; \
#	do \
#		if [[ $$f -nt ~/$$f ]]; then \
#			echo cp -p $$f ~ ; \
#			cp -p $$f ~ ; \
#		fi; \
#	done; true
