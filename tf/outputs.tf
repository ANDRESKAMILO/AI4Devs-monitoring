// Outputs para la instancia frontend
output "frontend_public_ip" {
  description = "IP pública de la instancia frontend"
  value       = aws_instance.frontend.public_ip
}

output "frontend_public_dns" {
  description = "DNS público de la instancia frontend"
  value       = aws_instance.frontend.public_dns
}

// Outputs para la instancia backend
output "backend_public_ip" {
  description = "IP pública de la instancia backend"
  value       = aws_instance.backend.public_ip
}

output "backend_public_dns" {
  description = "DNS público de la instancia backend"
  value       = aws_instance.backend.public_dns
}

// Output para las variables de entorno de GitHub Actions
output "ec2_instance" {
  description = "String formateado con las IPs de las instancias para GitHub Actions"
  value       = "frontend_public_ip=${aws_instance.frontend.public_ip},backend_public_ip=${aws_instance.backend.public_ip}"
} 