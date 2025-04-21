resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f" # Amazon Linux 2 AMI in us-east-1
  instance_type = "t3.small"

  key_name = "your-keypair-name"  # replace with your actual AWS key pair name

  tags = {
    Name = "FrontEnd-Terraform"
  }
}