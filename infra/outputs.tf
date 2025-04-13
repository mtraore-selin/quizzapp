output "prod_ip" {
  value = aws_instance.prod_quizzapp.public_ip
}