variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "ap-south-1"
}

variable "instance_type" {
  description = "Instance type for web server"
  type        = string
  default     = "t2.micro"
}

variable "web_server_ami" {
  description = "AMI ID for web server"
  type        = string
  default =  "ami-0b09627181c8d5778"
}
