resource "aws_instance" "servers" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "${var.project_name}-server-${count.index + 1}"
  }
}

output "instance_ids" {
  description = "List of instance IDs"
  value       = aws_instance.servers[*].id
}

output "instance_private_ips" {
  description = "List of private IP addresses"
  value       = aws_instance.servers[*].private_ip
}

output "instance_public_ips" {
  description = "List of public IP addresses"
  value       = aws_instance.servers[*].public_ip
}
