DIR_GIT=$(shell sh -c "git rev-parse --show-toplevel")
USER=$(shell whoami)

all: help

##@ Docs Generation
docs: ## Generates Terraform docs for modules
	$(info ************  Terraform Docs ************)
	@terraform-docs ./terraform/

##@ Checks
tflint: ## Checks Terraform files with tflint
	$(call info_colors,green,👏 Tflint)
	tflint --init
	ls -d ./modules/* | xargs -n 1 -I {} sh -c 'echo "{}" && tflint --chdir {} -f compact || exit 255'
	tflint ./staging/ -f compact



precommit: ## Checks Terraform files with tflint
	$(info ************  Pre-commit checks ************)
	@pre-commit run --all-files && echo "Pre-commit checks passed" || echo "Pre-commit checks failed"

lint: tflint precommit ## Runs tflint & Precommit


