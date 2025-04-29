resource "aws_instance" "instance" {

    ami = var.ami_id # Amazon Linux 2 AMI in us-east-1
    instance_type = var.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
      Name = " ${ var.name }-terraform "
    }
}

resource "aws_route53_record" "frontend" {

    zone_id = var.zone_id
    name    = "${var.name}-${var.env}"
    type    = "A"
    ttl     = 300
    records = [aws_instance.instance.private_ip]
}

output "instance_private_ips" {
    value =  aws_instance.instance
}
#
#
# #everytime if provisioner change the whole instance is recreated so better keep it outside aws instance in a null_resource
resource "null_resource" "frontend" {
    depends_on = [aws_route53_record.frontend]
    provisioner "remote-exec" {

        connection {
            type     = "ssh"
            user     = "ec2-user"
            password = "DevOps321"
            host     = aws_instance.instance.private_ip
        }


        inline = [
            "sudo pip3.11 install ansible ",
            "ansible-pull -i localhost, https://github.com/VinayBKrishna/roboshop-ansible.git roboshop.yml -e component_name=${var.name} -e env=${var.env}"

        ]


    }
}