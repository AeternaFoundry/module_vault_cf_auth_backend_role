variable "cf_auth_backend_roles" {
  description = <<EOT
Map of cf_auth_backend_roles, attributes below
Required:
    - mount
    - name
Optional:
    - alias_metadata
    - bound_application_ids
    - bound_instance_ids
    - bound_organization_ids
    - bound_space_ids
    - disable_ip_matching
    - namespace
    - token_bound_cidrs
    - token_explicit_max_ttl
    - token_max_ttl
    - token_no_default_policy
    - token_num_uses
    - token_period
    - token_policies
    - token_ttl
    - token_type
EOT

  type = map(object({
    mount                   = string
    name                    = string
    alias_metadata          = optional(map(string))
    bound_application_ids   = optional(set(string))
    bound_instance_ids      = optional(set(string))
    bound_organization_ids  = optional(set(string))
    bound_space_ids         = optional(set(string))
    disable_ip_matching     = optional(bool)
    namespace               = optional(string)
    token_bound_cidrs       = optional(set(string))
    token_explicit_max_ttl  = optional(number)
    token_max_ttl           = optional(number)
    token_no_default_policy = optional(bool)
    token_num_uses          = optional(number)
    token_period            = optional(number)
    token_policies          = optional(set(string))
    token_ttl               = optional(number)
    token_type              = optional(string)
  }))
}

