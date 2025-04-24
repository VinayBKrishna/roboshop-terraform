variable "env"{
  default = "env"
}



variable "vpc_security_group_ids" {
  default = ["sg-0171a68ab5d431564"]
}

variable "instance"{
  default = {
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
    }
    }
}

variable "zone_id" {
  default = "Z09180393TY9K7UQDKE5E"
}
