output "ai_gateways_account_id" {
  description = "Map of account_id values across all ai_gateways, keyed the same as var.ai_gateways except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "ai_gateways_authentication" {
  description = "Map of authentication values across all ai_gateways, keyed the same as var.ai_gateways except keys with no authentication are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.authentication if v.authentication != null }
}
output "ai_gateways_cache_invalidate_on_update" {
  description = "Map of cache_invalidate_on_update values across all ai_gateways, keyed the same as var.ai_gateways except keys with no cache_invalidate_on_update are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.cache_invalidate_on_update if v.cache_invalidate_on_update != null }
}
output "ai_gateways_cache_ttl" {
  description = "Map of cache_ttl values across all ai_gateways, keyed the same as var.ai_gateways except keys with no cache_ttl are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.cache_ttl if v.cache_ttl != null }
}
output "ai_gateways_collect_logs" {
  description = "Map of collect_logs values across all ai_gateways, keyed the same as var.ai_gateways except keys with no collect_logs are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.collect_logs if v.collect_logs != null }
}
output "ai_gateways_created_at" {
  description = "Map of created_at values across all ai_gateways, keyed the same as var.ai_gateways except keys with no created_at are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.created_at if v.created_at != null && length(v.created_at) > 0 }
}
output "ai_gateways_dlp" {
  description = "Map of dlp values across all ai_gateways, keyed the same as var.ai_gateways except keys with no dlp are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.dlp if v.dlp != null && length(v.dlp) > 0 }
}
output "ai_gateways_guardrails" {
  description = "Map of guardrails values across all ai_gateways, keyed the same as var.ai_gateways except keys with no guardrails are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.guardrails if v.guardrails != null && length(v.guardrails) > 0 }
}
output "ai_gateways_id" {
  description = "Map of id values across all ai_gateways, keyed the same as var.ai_gateways except keys with no id are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ai_gateways_is_default" {
  description = "Map of is_default values across all ai_gateways, keyed the same as var.ai_gateways except keys with no is_default are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.is_default if v.is_default != null }
}
output "ai_gateways_log_classification" {
  description = "Map of log_classification values across all ai_gateways, keyed the same as var.ai_gateways except keys with no log_classification are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.log_classification if v.log_classification != null }
}
output "ai_gateways_log_management" {
  description = "Map of log_management values across all ai_gateways, keyed the same as var.ai_gateways except keys with no log_management are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.log_management if v.log_management != null }
}
output "ai_gateways_log_management_strategy" {
  description = "Map of log_management_strategy values across all ai_gateways, keyed the same as var.ai_gateways except keys with no log_management_strategy are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.log_management_strategy if v.log_management_strategy != null && length(v.log_management_strategy) > 0 }
}
output "ai_gateways_logpush" {
  description = "Map of logpush values across all ai_gateways, keyed the same as var.ai_gateways except keys with no logpush are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.logpush if v.logpush != null }
}
output "ai_gateways_logpush_public_key" {
  description = "Map of logpush_public_key values across all ai_gateways, keyed the same as var.ai_gateways except keys with no logpush_public_key are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.logpush_public_key if v.logpush_public_key != null && length(v.logpush_public_key) > 0 }
}
output "ai_gateways_modified_at" {
  description = "Map of modified_at values across all ai_gateways, keyed the same as var.ai_gateways except keys with no modified_at are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.modified_at if v.modified_at != null && length(v.modified_at) > 0 }
}
output "ai_gateways_otel" {
  description = "Map of otel values across all ai_gateways, keyed the same as var.ai_gateways except keys with no otel are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.otel if v.otel != null && length(v.otel) > 0 }
}
output "ai_gateways_rate_limiting_interval" {
  description = "Map of rate_limiting_interval values across all ai_gateways, keyed the same as var.ai_gateways except keys with no rate_limiting_interval are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.rate_limiting_interval if v.rate_limiting_interval != null }
}
output "ai_gateways_rate_limiting_limit" {
  description = "Map of rate_limiting_limit values across all ai_gateways, keyed the same as var.ai_gateways except keys with no rate_limiting_limit are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.rate_limiting_limit if v.rate_limiting_limit != null }
}
output "ai_gateways_rate_limiting_technique" {
  description = "Map of rate_limiting_technique values across all ai_gateways, keyed the same as var.ai_gateways except keys with no rate_limiting_technique are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.rate_limiting_technique if v.rate_limiting_technique != null && length(v.rate_limiting_technique) > 0 }
}
output "ai_gateways_retry_backoff" {
  description = "Map of retry_backoff values across all ai_gateways, keyed the same as var.ai_gateways except keys with no retry_backoff are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.retry_backoff if v.retry_backoff != null && length(v.retry_backoff) > 0 }
}
output "ai_gateways_retry_delay" {
  description = "Map of retry_delay values across all ai_gateways, keyed the same as var.ai_gateways except keys with no retry_delay are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.retry_delay if v.retry_delay != null }
}
output "ai_gateways_retry_max_attempts" {
  description = "Map of retry_max_attempts values across all ai_gateways, keyed the same as var.ai_gateways except keys with no retry_max_attempts are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.retry_max_attempts if v.retry_max_attempts != null }
}
output "ai_gateways_spend_limits" {
  description = "Map of spend_limits values across all ai_gateways, keyed the same as var.ai_gateways except keys with no spend_limits are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.spend_limits if v.spend_limits != null && length(v.spend_limits) > 0 }
}
output "ai_gateways_store_id" {
  description = "Map of store_id values across all ai_gateways, keyed the same as var.ai_gateways except keys with no store_id are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.store_id if v.store_id != null && length(v.store_id) > 0 }
}
output "ai_gateways_stripe" {
  description = "Map of stripe values across all ai_gateways, keyed the same as var.ai_gateways except keys with no stripe are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.stripe if v.stripe != null && length(v.stripe) > 0 }
}
output "ai_gateways_workers_ai_billing_mode" {
  description = "Map of workers_ai_billing_mode values across all ai_gateways, keyed the same as var.ai_gateways except keys with no workers_ai_billing_mode are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.workers_ai_billing_mode if v.workers_ai_billing_mode != null && length(v.workers_ai_billing_mode) > 0 }
}
output "ai_gateways_zdr" {
  description = "Map of zdr values across all ai_gateways, keyed the same as var.ai_gateways except keys with no zdr are omitted"
  value       = { for k, v in cloudflare_ai_gateway.ai_gateways : k => v.zdr if v.zdr != null }
}

