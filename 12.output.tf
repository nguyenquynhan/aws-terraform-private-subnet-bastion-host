output "public_ip" {
  description = "Public instance IP"
  value       = aws_instance.my_public.*.public_ip
}

output "private_ip" {
  description = "Private instance IP"
  value       = aws_instance.my_private.*.private_ip
}