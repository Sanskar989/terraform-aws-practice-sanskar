output "web_server_public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP of the web server"
}

output "db_endpoint" {
  value       = aws_db_instance.db.address
  description = "Database endpoint (internal only)"
}
