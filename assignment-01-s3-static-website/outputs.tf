output "website_endpoint" {
  description = "The URL of the S3 static website"
  value       = aws_s3_bucket_website_configuration.website.website_endpoint
}
