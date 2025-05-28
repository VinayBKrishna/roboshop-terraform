instance = {
  frontend = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "frontend-docker"
  },
  mongo = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"

  },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "catalogue-docker"
  },
  redis = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },

  user = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "user-docker"
  },
  cart = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "cart-docker"
  },
  #
  mysql = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  shipping = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "shipping-docker"
  },
  rabbitmq = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  payment = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "payment-docker"
  },



}

zone_id = "Z09180393TY9K7UQDKE5E"

vpc_security_group_ids = ["sg-0171a68ab5d431564"]

env="dev"

# terraform plan -var-file=env-prod/main.tfvars
