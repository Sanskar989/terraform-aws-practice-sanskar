# Web Server EC2 Instance in Public Subnet
resource "aws_instance" "web" {
  ami                    = var.web_server_ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  tags = { Name = "web-server" }

  # Simple user_data to install Apache and test page
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Hello from your Two-Tier Terraform Architecture!</h1>" > /var/www/html/index.html
              EOF
}

# RDS MySQL Database in Private Subnet
resource "aws_db_subnet_group" "db_subnet" {
  name       = "db-subnet-group"
  subnet_ids = [aws_subnet.private.id]
  tags = { Name = "db-subnet-group" }
}

resource "aws_db_instance" "db" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.db_subnet.name
  vpc_security_group_ids = [aws_security_group.db_sg.id]
  skip_final_snapshot  = true

  # Additional settings for quicker lab
  publicly_accessible  = false
  tags = { Name = "rds-db" }
}
