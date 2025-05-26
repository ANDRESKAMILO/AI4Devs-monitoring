resource "aws_instance" "backend" {
  ami                  = "ami-075d39ebbca89ed55" # Amazon Linux 2 AMI
  instance_type        = "t2.micro"
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  monitoring           = var.monitoring_config.enable_detailed_monitoring

  user_data = templatefile("scripts/backend_user_data.sh", {
    timestamp         = timestamp(),
    datadog_api_key   = var.datadog_api_key,
    datadog_config    = var.datadog_config,
    monitoring_config = var.monitoring_config
  })

  vpc_security_group_ids = [aws_security_group.backend_sg.id]

  tags = merge(
    var.common_tags,
    {
      Name             = "lti-project-backend"
      Role             = "backend"
      Service          = "api"
      DatadogMonitored = "true"
    }
  )

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required" # IMDSv2 requerido para seguridad
  }
}

resource "aws_instance" "frontend" {
  ami                  = "ami-075d39ebbca89ed55" # Amazon Linux 2 AMI
  instance_type        = "t2.medium"
  iam_instance_profile = aws_iam_instance_profile.ec2_instance_profile.name
  monitoring           = var.monitoring_config.enable_detailed_monitoring

  user_data = templatefile("scripts/frontend_user_data.sh", {
    timestamp         = timestamp(),
    datadog_api_key   = var.datadog_api_key,
    datadog_config    = var.datadog_config,
    monitoring_config = var.monitoring_config
  })

  vpc_security_group_ids = [aws_security_group.frontend_sg.id]

  tags = merge(
    var.common_tags,
    {
      Name             = "lti-project-frontend"
      Role             = "frontend"
      Service          = "web"
      DatadogMonitored = "true"
    }
  )

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required" # IMDSv2 requerido para seguridad
  }
}
