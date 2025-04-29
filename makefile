dev-apply:
	rm -f .terraform/terraform.tfstate
	git pull
	terraform init -backend-config=env-dev/state.tfvars
	terraform plan -var-file=env-dev/main.tfvars -auto-apply
	terraform apply -var-file=env-dev/main.tfvars -auto-apply

dev-destroy:
	rm -f .terraform/terraform.tfstate
	git pull
	terraform init -backend-config=env-dev/state.tfvars
	terraform destroy -var-file=env-dev/main.tfvars -auto-apply

prod-apply:
	rm -f .terraform/terraform.tfstate
	git pull
	terraform init -backend-config=env-prod/state.tfvars
	terraform plan -var-file=env-prod/main.tfvars -auto-apply
	terraform apply -var-file=env-prod/main.tfvars -auto-apply

prod-destroy:
	rm -f .terraform/terraform.tfstate
	git pull
	terraform init -backend-config=env-prod/state.tfvars
	terraform destroy -var-file=env-prod/main.tfvars -auto-apply
