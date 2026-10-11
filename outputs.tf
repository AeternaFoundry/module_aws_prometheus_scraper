output "prometheus_scrapers_id" {
  description = "Map of id values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prometheus_scrapers_alias" {
  description = "Map of alias values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "prometheus_scrapers_arn" {
  description = "Map of arn values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "prometheus_scrapers_destination" {
  description = "Map of destination values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.destination if v.destination != null && length(v.destination) > 0 }
}
output "prometheus_scrapers_region" {
  description = "Map of region values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "prometheus_scrapers_role_arn" {
  description = "Map of role_arn values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "prometheus_scrapers_role_configuration" {
  description = "Map of role_configuration values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.role_configuration if v.role_configuration != null && length(v.role_configuration) > 0 }
}
output "prometheus_scrapers_scrape_configuration" {
  description = "Map of scrape_configuration values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.scrape_configuration if v.scrape_configuration != null && length(v.scrape_configuration) > 0 }
}
output "prometheus_scrapers_source" {
  description = "Map of source values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.source if v.source != null && length(v.source) > 0 }
}
output "prometheus_scrapers_tags" {
  description = "Map of tags values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "prometheus_scrapers_tags_all" {
  description = "Map of tags_all values across all prometheus_scrapers, keyed the same as var.prometheus_scrapers"
  value       = { for k, v in aws_prometheus_scraper.prometheus_scrapers : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

