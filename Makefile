all: help

.PHONY: help
help: Makefile
	@echo
	@echo " Choose a make command to run"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## init: project initialization - install tools and register git hook
.PHONY: init
init:
	asdf install
	ln -s ../../pre-commit.sh .git/hooks/pre-commit

## tffmt: runs terraform fmt against iac/base and iac/env/dev
.PHONY: tffmt
tffmt:
	terraform fmt -check=true ./iac/base
	terraform fmt -check=true ./iac/env/dev
