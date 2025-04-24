resource "aws_instance" "instance" {
    for_each = var.instance
    ami           = each.value.ami_id # Amazon Linux 2 AMI in us-east-1
    instance_type = each.value.instance_type
    vpc_security_group_ids = var.vpc_security_group_ids

    tags = {
      Name = " ${ var.instance[each.key] }-terraform "
    }


}

resource "aws_route53_record" "frontend" {
    for_each = var.instance
    zone_id = var.zone_id
    name    = "${var.instance[each.key]}-${var.env}"
    type    = "A"
    ttl     = 300
    records = [aws_instance.instance[each.key].private_ip]
}
#
#
# #everytime if provisioner change the whole instance is recreated so better keep it outside aws instance in a null_resource
# resource "null_resource" "frontend" {
#
#     provisioner "remote-exec" {
#
#         connection {
#             type     = "ssh"
#             user     = "ec2-user"
#             password = "DevOps321"
#             host     = aws_instance.frontend.public_ip
#         }
#
#         inline = [
#             "pip3.11 install ansible",
#             "ansible-pull -i localhost, -u https://github.com/VinayBKrishna/roboshop-ansible.git roboshop.yml -e component_name=frontend -e env=dev",
#         ]
#     }
# }