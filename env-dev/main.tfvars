db_instances = {
  frontend = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "frontend-docker"
    root_volume_size = 30
  },
  mongo = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20

  },
  catalogue = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "catalogue-docker"
    root_volume_size = 30

  },
  redis = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20

  },

  user = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "user-docker"
    root_volume_size = 30

  },
  cart = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    ansible_role = "cart-docker"
    root_volume_size = 30

  },
  #
  mysql = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 20
  },
  shipping = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 30
    ansible_role = "shipping-docker"
  },
  rabbitmq = {
    ami_id = "ami-09c813fb71547fc4f"
    root_volume_size = 20
    instance_type = "t3.small"
  },
  payment = {
    ami_id = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
    root_volume_size = 30
    ansible_role = "payment-docker"
  },



}

zone_id = "Z09180393TY9K7UQDKE5E"

vpc_security_group_ids = ["sg-0171a68ab5d431564"]

env="dev"

eks = {
  main = {
    subnets = ["subnet-0c8c156354b299b12","subnet-068d93372de56df27"]
    eks_version = 1.32
    node_groups = {
        main = {
          min_nodes = 3
          max_nodes = 10
          instance_type = ["t3.medium","t3.large"]
        }
    }
    addons = {

    }
  }
}

# terraform plan -var-file=env-prod/main.tfvars
