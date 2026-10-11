resource "cloudflare_ai_gateway" "ai_gateways" {
  for_each = var.ai_gateways

  account_id                 = each.value.account_id
  cache_invalidate_on_update = each.value.cache_invalidate_on_update
  cache_ttl                  = each.value.cache_ttl
  collect_logs               = each.value.collect_logs
  id                         = each.value.id
  rate_limiting_interval     = each.value.rate_limiting_interval
  rate_limiting_limit        = each.value.rate_limiting_limit
  authentication             = each.value.authentication
  dlp                        = each.value.dlp
  guardrails                 = each.value.guardrails
  log_classification         = each.value.log_classification
  log_management             = each.value.log_management
  log_management_strategy    = each.value.log_management_strategy
  logpush                    = each.value.logpush
  logpush_public_key         = each.value.logpush_public_key
  otel                       = each.value.otel
  rate_limiting_technique    = each.value.rate_limiting_technique
  retry_backoff              = each.value.retry_backoff
  retry_delay                = each.value.retry_delay
  retry_max_attempts         = each.value.retry_max_attempts
  spend_limits               = each.value.spend_limits
  store_id                   = each.value.store_id
  stripe                     = each.value.stripe
  workers_ai_billing_mode    = each.value.workers_ai_billing_mode
  zdr                        = each.value.zdr
}

