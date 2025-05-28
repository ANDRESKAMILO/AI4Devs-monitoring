variable "datadog_api_key" {
  description = "Datadog API Key"
  type        = string
  sensitive   = true
}

variable "datadog_app_key" {
  description = "Datadog Application Key"
  type        = string
  sensitive   = true
}

variable "datadog_external_id" {
  description = "External ID para la integración de Datadog con AWS"
  type        = string
  sensitive   = true
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "production"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "common_tags" {
  description = "Tags comunes para todos los recursos"
  type        = map(string)
  default = {
    Environment = "production"
    Project     = "AI4Devs"
    Monitoring  = "datadog"
    ManagedBy   = "terraform"
  }
}

variable "datadog_config" {
  description = "Configuración del agente Datadog"
  type        = map(string)
  default = {
    agent_version = "7"
    site          = "datadoghq.com"
    env           = "production"
    logs_enabled  = "true"
    apm_enabled   = "true"
    tags          = "env:production,project:ai4devs"
  }
}

variable "monitoring_config" {
  description = "Configuración de monitoreo"
  type = object({
    metrics_collection_interval = number
    logs_retention_days         = number
    enable_detailed_monitoring  = bool
  })
  default = {
    metrics_collection_interval = 60
    logs_retention_days         = 30
    enable_detailed_monitoring  = true
  }
}
