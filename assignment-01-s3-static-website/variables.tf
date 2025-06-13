variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1" # or any region you prefer
}

variable "bucket_name" {
  description = "Globally unique S3 bucket name"
  type        = string
}
