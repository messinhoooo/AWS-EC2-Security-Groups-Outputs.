output "ec2_public_ip" {
  value = aws_instance.instance_exercicio_gemini02.public_ip
}

output "ec2_public_dns" {
  value = aws_instance.instance_exercicio_gemini02.public_dns
}

output "web_url" {
  value = "http://${aws_instance.instance_exercicio_gemini02.public_ip}"
}



