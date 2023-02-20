output "vpc_name" {
  # value = local_file.fooVarPctList.content
  value = aws_vpc.vpc.tags.Name
}

# output "subnet1Val" {
#   # value = local_file.fooVarPctList.content
#   value = toset([for subnet in aws_subnet.Asubnet1 : subnet.id])
# }

output "subnet1Val" {
  # value = local_file.fooVarPctList.content
  value = aws_subnet.Asubnet1.tags.Name
}

output "subnet2Val" {
  # value = local_file.fooVarPctList.content
  value = aws_subnet.Asubnet2.tags.Name
}

output "security_groups" {
  # value = local_file.fooVarPctList.content
  value = aws_security_group.anuj_scgp.name
}

output "instance_names1" {
  value = {
    for instance in aws_instance.web-ec2a:
      instance.id => instance.tags.Name
  }
}

output "instance_names2" {
  value = {
    for instance in aws_instance.web-ec2b:
      instance.id => instance.tags.Name
  }
}
