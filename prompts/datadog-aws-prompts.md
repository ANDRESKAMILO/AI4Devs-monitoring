# 🎯 Prompt Engineering para Integración AWS-Datadog

## 📋 Estructura del Documento
1. [Prompts Maestros](#prompts-maestros)
2. [Prompts por Etapa](#prompts-por-etapa)
3. [Prompts de Validación](#prompts-de-validación)
4. [Prompts de Troubleshooting](#prompts-de-troubleshooting)

## 🎓 Prompts Maestros

### 1. Prompt Base para Infraestructura
```prompt
Actúa como un arquitecto DevOps senior especializado en monitorización con más de 10 años de experiencia en AWS y Datadog. Necesito implementar una solución de monitorización empresarial que:

CONTEXTO:
- Infraestructura: AWS (EC2, VPC, Security Groups)
- Herramienta de Monitoreo: Datadog
- IaC: Terraform
- CI/CD: GitHub Actions

REQUISITOS:
1. Alta disponibilidad y seguridad
2. Mejores prácticas de IaC
3. Gestión segura de secretos
4. Automatización completa del despliegue

ENTREGABLES ESPERADOS:
1. Configuración Terraform para AWS-Datadog
2. Scripts de instalación de agentes
3. Pipeline de CI/CD
4. Documentación técnica

Por favor, proporciona la implementación siguiendo las mejores prácticas de DevOps y seguridad.
```

### 2. Prompt de Consolidación de Cambios
```prompt
Revisa y optimiza la siguiente implementación de monitorización considerando:

CONTEXTO ACTUAL:
{pegar configuración actual}

OBJETIVOS DE OPTIMIZACIÓN:
1. Reducir duplicación de código
2. Mejorar seguridad
3. Optimizar rendimiento
4. Garantizar escalabilidad

ÁREAS DE ENFOQUE:
1. Gestión de secretos
2. Configuración de agentes
3. Políticas de IAM
4. Automatización de despliegue

Proporciona recomendaciones específicas y ejemplos de código optimizado.
```

## 📦 Prompts por Etapa

### Etapa 1: Configuración de Providers
```prompt
Como arquitecto de infraestructura, necesito configurar los providers de Terraform para AWS y Datadog, considerando:

REQUISITOS:
1. Versiones específicas de providers
2. Gestión segura de credenciales
3. Configuración regional
4. Variables de entorno

ESTRUCTURA ESPERADA:
- provider.tf
- variables.tf
- outputs.tf

Proporciona la configuración completa con comentarios explicativos.
```

### Etapa 2: Instalación de Agentes
```prompt
Como DevOps engineer, necesito un script de instalación del agente Datadog que:

REQUISITOS:
1. Sea idempotente
2. Maneje errores gracefully
3. Configure logs y métricas
4. Soporte actualizaciones automáticas

CONSIDERACIONES:
- OS: Amazon Linux 2
- Método: user_data
- Seguridad: Least privilege
- Monitoreo: Auto-discovery

Proporciona el script con validaciones y logging.
```

### Etapa 3: Pipeline de CI/CD
```prompt
Como SRE, necesito un pipeline de GitHub Actions que:

FLUJO REQUERIDO:
1. Validación de código
2. Plan de Terraform
3. Aplicación de cambios
4. Verificación post-despliegue

SEGURIDAD:
- Gestión de secretos
- Validaciones
- Aprobaciones
- Rollback

Proporciona el workflow completo con stages y jobs.
```

## 🔍 Prompts de Validación

### Validación de Seguridad
```prompt
Realiza un análisis de seguridad de la implementación actual:

ÁREAS DE REVISIÓN:
1. Gestión de secretos
2. Permisos IAM
3. Configuración de red
4. Logs y auditoría

ENTREGABLE:
- Lista de vulnerabilidades
- Recomendaciones
- Ejemplos de corrección
```

### Validación de Monitoreo
```prompt
Verifica la configuración de monitoreo:

ASPECTOS A VALIDAR:
1. Métricas críticas
2. Logs esenciales
3. Alertas configuradas
4. Dashboards

RESULTADO ESPERADO:
- Checklist de validación
- Ajustes recomendados
- Métricas adicionales sugeridas
```

## 🛠️ Prompts de Troubleshooting

### Diagnóstico de Problemas Comunes
```prompt
Como SRE, necesito diagnosticar y resolver:

SÍNTOMAS:
{descripción del problema}

ANÁLISIS REQUERIDO:
1. Logs relevantes
2. Métricas afectadas
3. Configuraciones relacionadas
4. Dependencias impactadas

RESULTADO ESPERADO:
- Diagnóstico root cause
- Solución propuesta
- Pasos de implementación
- Medidas preventivas
```

## 📈 Mejores Prácticas de Prompt Engineering

1. **Estructura Clara**:
   - Contexto → Requisitos → Entregables
   - Formato consistente y jerárquico
   - Uso de marcadores y listas

2. **Especificidad**:
   - Roles definidos
   - Objetivos claros
   - Métricas de éxito

3. **Iteración**:
   - Prompts base
   - Refinamientos
   - Validaciones

4. **Documentación**:
   - Comentarios explicativos
   - Referencias a docs oficiales
   - Ejemplos de uso

---
🔄 Este documento es un trabajo en progreso y se actualiza según las necesidades del proyecto y feedback recibido.