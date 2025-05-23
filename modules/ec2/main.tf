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
    ttl     = 10
    records = [aws_instance.instance.private_ip]
}

# resource "aws_route53_record" "public" {
#
#     zone_id = var.zone_id
#     name    = "${var.name}-${var.env}"
#     type    = "A"
#     ttl     = 10
#     records = [aws_instance.instance.public_ip]
# }

#
#
# #everytime if provisioner change the whole instance is recreated so better keep it outside aws instance in a null_resource
resource "null_resource" "frontend" {
    # depends_on = [aws_route53_record.frontend]

    triggers = {
        instance_id_change = aws_instance.instance.id
    }

    provisioner "remote-exec" {

        connection {
            type     = "ssh"
            user     = data.vault_generic_secret.ssh_secret.data["username"]
            password = data.vault_generic_secret.ssh_secret.data["password"]
            host     = aws_instance.instance.private_ip
        }


        inline = [
            "sudo pip3.11 install ansible hvac",
            "ansible-pull -i localhost, -U https://github.com/VinayBKrishna/roboshop-ansible.git -e component_name=${var.name} -e env=${var.env} roboshop.yml"
        ]


    }
}