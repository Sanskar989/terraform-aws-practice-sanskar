variable "aws_region" {
  description = "AWS region"
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "Web server instance type"
  default     = "t2.micro"
}

variable "web_server_ami" {
  description = "AMI ID for the web server"
  default     = "ami-0b09627181c8d5778"
}

variable "db_username" {
  description = "DB master username"
  default     = "admin"
}

variable "db_password" {
  description = "DB master password"
  default     = "Sanskar@1234"
  type        = string
  sensitive   = true
}

variable "db_name" {
  description = "Database name sanskar"
  default     = "myappdb"
}
