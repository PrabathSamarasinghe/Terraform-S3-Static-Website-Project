
output "IPaddress" {
  value = aws_instance.web.public_ip
}

output "DNS" {
  value = aws_instance.web.public_dns
}