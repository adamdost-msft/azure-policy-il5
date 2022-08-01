TOTOP := ./
CURRENT_DIR := ${CURDIR}


.PHONY: all init plan cost docs apply

all: init plan cost docs apply

init:
	terraform init \
    -backend-config="environment=usgovernment"

plan:
	terraform plan -out state.tfstate

cost:
	infracost breakdown --path state.tfstate --format html --out-file cost.html --show-skipped

docs:
	terraform-docs .

apply:
	terraform apply state.tfstate