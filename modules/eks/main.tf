resource "aws_eks_cluster" "example" {
  name = var.env

  access_config {
    authentication_mode = "API"
    bootstrap_cluster_creator_admin_permissions = true
  }

  role_arn = aws_iam_role.cluster-role.arn
  version  = var.eks_version

  vpc_config {
    subnet_ids = var.subnets
  }


}

resource "aws_eks_node_group" "main" {
  for_each = var.node_groups
  cluster_name    = aws_eks_cluster.example.name
  node_group_name = each.key
  node_role_arn   = aws_iam_role.node-role.arn
  subnet_ids      = var.subnets
  instance_types = each.value["instance_type"]

  scaling_config {
    desired_size = each.value["min_nodes"]
    max_size     = each.value["max_nodes"]
    min_size     = each.value["min_nodes"]
  }




}