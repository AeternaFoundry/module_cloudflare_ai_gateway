variable "ai_gateways" {
  description = <<EOT
Map of ai_gateways, attributes below
Required:
    - account_id
    - cache_invalidate_on_update
    - cache_ttl
    - collect_logs
    - id
    - rate_limiting_interval
    - rate_limiting_limit
Optional:
    - authentication
    - dlp
    - guardrails
    - log_classification
    - log_management
    - log_management_strategy
    - logpush
    - logpush_public_key
    - otel
    - rate_limiting_technique
    - retry_backoff
    - retry_delay
    - retry_max_attempts
    - spend_limits
    - store_id
    - stripe
    - workers_ai_billing_mode
    - zdr
EOT

  type = map(object({
    account_id                 = string
    cache_invalidate_on_update = bool
    cache_ttl                  = number
    collect_logs               = bool
    id                         = string
    rate_limiting_interval     = number
    rate_limiting_limit        = number
    authentication             = optional(bool)
    dlp = optional(object({
      action  = optional(string)
      enabled = bool
      policies = optional(list(object({
        action   = string
        check    = list(string)
        enabled  = bool
        id       = string
        profiles = list(string)
      })))
      profiles = optional(list(string))
    }))
    guardrails = optional(object({
      prompt = object({
        p1  = optional(string)
        s1  = optional(string)
        s10 = optional(string)
        s11 = optional(string)
        s12 = optional(string)
        s13 = optional(string)
        s2  = optional(string)
        s3  = optional(string)
        s4  = optional(string)
        s5  = optional(string)
        s6  = optional(string)
        s7  = optional(string)
        s8  = optional(string)
        s9  = optional(string)
      })
      response = object({
        p1  = optional(string)
        s1  = optional(string)
        s10 = optional(string)
        s11 = optional(string)
        s12 = optional(string)
        s13 = optional(string)
        s2  = optional(string)
        s3  = optional(string)
        s4  = optional(string)
        s5  = optional(string)
        s6  = optional(string)
        s7  = optional(string)
        s8  = optional(string)
        s9  = optional(string)
      })
    }))
    log_classification      = optional(bool)
    log_management          = optional(number)
    log_management_strategy = optional(string)
    logpush                 = optional(bool)
    logpush_public_key      = optional(string)
    otel = optional(list(object({
      authorization = optional(string)
      content_type  = optional(string)
      headers       = map(string)
      url           = string
    })))
    rate_limiting_technique = optional(string)
    retry_backoff           = optional(string)
    retry_delay             = optional(number)
    retry_max_attempts      = optional(number)
    spend_limits = optional(object({
      enabled = optional(bool)
      rules = optional(list(object({
        ai_gateway_provider = optional(object({
          mode   = string
          values = list(string)
        }))
        enabled    = optional(bool)
        id         = optional(string)
        limit      = number
        limit_type = string
        metadata = optional(map(object({
          mode   = string
          values = optional(list(string))
        })))
        model = optional(object({
          mode   = string
          values = list(string)
        }))
        technique = optional(string)
        window    = number
      })))
    }))
    store_id = optional(string)
    stripe = optional(object({
      authorization = string
      usage_events = list(object({
        payload = string
      }))
    }))
    workers_ai_billing_mode = optional(string)
    zdr                     = optional(bool)
  }))
}

