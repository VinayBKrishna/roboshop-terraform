instance = {
  frontend = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  mongo = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
   },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  user = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  cart = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  redis = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  mysql = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  rabbitmq = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  shipping = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },
  distapch = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  },

}

zone_id = "Z09180393TY9K7UQDKE5E"

vpc_security_group_ids = ["sg-0171a68ab5d431564"]

env="dev"

# terraform plan -var-file=env-prod/main.tfvars
