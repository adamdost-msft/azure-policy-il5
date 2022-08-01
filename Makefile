TOTOP := ./
CURRENT_DIR := ${CURDIR}


.PHONY: all init plan docs apply

all: init plan docs apply

init:
	terraform init \
    -backend-config="environment=usgovernment"

plan:
	terraform plan -out state.tfstate

docs:
	terraform-docs .
	terraform-docs ./modules/ContainerRegistry
	terraform-docs ./modules/Storage

apply:
	terraform apply state.tfstate