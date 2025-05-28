provider "aws" {
  region = var.aws_region  // Región de AWS a utilizar
}

provider "datadog" {
  api_key = var.datadog_api_key  // Clave API de Datadog
  app_key = var.datadog_app_key  // Clave de aplicación de Datadog
}

resource "aws_instance" "example" {
  ami           = var.ami_id  // ID de la imagen AMI
  instance_type = var.instance_type  // Tipo de instancia

  user_data = <<-EOF
              #!/bin/bash
              DD_AGENT_MAJOR_VERSION=7 DD_API_KEY=${var.datadog_api_key} DD_SITE="datadoghq.com" bash -c "$(curl -L https://s3.amazonaws.com/dd-agent/scripts/install_script.sh)"
              EOF
  tags = {
    Name = "ExampleInstance"  // Nombre de la instancia
  }
}

output "instance_id" {
  value = aws_instance.example.id  // ID de la instancia creada
}
