variable "prometheus_scrapers" {
  description = <<EOT
Map of prometheus_scrapers, attributes below
Required:
    - scrape_configuration
Optional:
    - alias
    - region
    - tags
    - destination (block):
        - amp (optional, block):
            - workspace_arn (required)
        - cloudwatch (optional, block):
            - dataset_arn (required)
    - role_configuration (block):
        - source_role_arn (optional)
        - target_role_arn (optional)
    - source (block):
        - eks (optional, block):
            - cluster_arn (required)
            - security_group_ids (optional)
            - subnet_ids (required)
        - vpc (optional, block):
            - security_group_ids (required)
            - subnet_ids (required)
EOT

  type = map(object({
    scrape_configuration = string
    alias                = optional(string)
    region               = optional(string)
    tags                 = optional(map(string))
    destination = optional(list(object({
      amp = optional(list(object({
        workspace_arn = string
      })))
      cloudwatch = optional(list(object({
        dataset_arn = string
      })))
    })))
    role_configuration = optional(list(object({
      source_role_arn = optional(string)
      target_role_arn = optional(string)
    })))
    source = optional(list(object({
      eks = optional(list(object({
        cluster_arn        = string
        security_group_ids = optional(set(string))
        subnet_ids         = set(string)
      })))
      vpc = optional(list(object({
        security_group_ids = set(string)
        subnet_ids         = set(string)
      })))
    })))
  }))
}

