provider "aws" {
    region = var.aws_region
}


resource "aws_instance" "instance_exercicio_gemini02" {
    instance_type = "t2.micro"
    ami = "ami-0d27e0fb3bac4d724"
    vpc_security_group_ids = [aws_security_group.sg-web-dev.id]
    user_data = <<-EOF
  #!/bin/bash
  dnf update -y
  dnf install -y nginx
  systemctl start nginx
  systemctl enable nginx
  echo "<h1>Servidor Web criado via Terraform por Emerson</h1>" > /var/www/html/index.html
EOF
    
    tags = {
    "Name"  = "Servidor Web Dev"
    "ambiente" = var.ambiente
    "proprietario" = var.proprietario
} 
}

