SHELL=/bin/zsh

.PHONY: full
full: zsh git

.PHONY: clean
clean:
	cd ../zsh && make clean && \
	cd ../git && make clean && \

.PHONY: zsh
zsh:
	cd zsh && make init

.PHONY: git
git:
	cd git && make init
