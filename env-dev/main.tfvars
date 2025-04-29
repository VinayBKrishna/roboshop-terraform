instance = {
  frontend = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  mongo = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  user = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  cart = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  redis = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  mysql = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  rabbitmq = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  shipping = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },
  distapch = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
  },

}

zone_id = "Z09180393TY9K7UQDKE5E"

vpc_security_group_ids = ["sg-0171a68ab5d431564"]

env="dev"

# terraform plan -var-file=env-prod/main.tfvars
