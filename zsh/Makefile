ENABLED := ${PWD}/enabled

.PHONY: init
init:
	ln -svf ${PWD}/00_zshrc ${HOME}/.zshrc

.PHONY: minimal
minimal: init
	mkdir -p ${PWD}/enabled && \
	ln -svf ${PWD}/01_config.zsh ${ENABLED} && \
	ln -svf ${PWD}/02_aliases.zsh ${ENABLED} && \
	ln -svf ${PWD}/10_starship.toml ${HOME}/.config/starship.toml

.PHONY: clean
clean:
	unlink ${HOME}/.zshrc || true && \
	unlink ${HOME}/.config/starship.toml || true && \
	rm -rf $(ENABLED) || true
