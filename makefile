dev-apply:
	git pull

	rm -f .terraform/terraform.tfstate

	terraform init -backend-config=env-dev/state.tfvars
	terraform plan -var-file=env-dev/main.tfvars
	terraform apply -var-file=env-dev/main.tfvars -auto-approve

dev-destroy:
	git pull

	rm -f .terraform/terraform.tfstate

	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -var-file=env-dev/main.tfvars -auto-approve

prod-apply:
	git pull

	rm -f .terraform/terraform.tfstate

	terraform init -backend-config=env-prod/state.tfvars
	terraform plan -var-file=env-prod/main.tfvars
	terraform apply -var-file=env-prod/main.tfvars -auto-approve

prod-destroy:
	git pull

	rm -f .terraform/terraform.tfstate

	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -var-file=env-prod/main.tfvars -auto-approve
