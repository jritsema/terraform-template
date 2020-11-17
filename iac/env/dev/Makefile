all: help

.PHONY: help
help: Makefile
	@echo
	@echo " Choose a make command to run"
	@echo
	@sed -n 's/^##//p' $< | column -t -s ':' |  sed -e 's/^/ /'
	@echo

## tfsummary: brief terraform plan summary
.PHONY: tfsummary
tfsummary:
	terraform plan | grep " resource "
