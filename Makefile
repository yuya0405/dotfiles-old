SHELL=/bin/zsh

.PHONY: full
full: git

.PHONY: clean
clean:
	cd ../git && make clean && \

.PHONY: git
git:
	cd git && make init
