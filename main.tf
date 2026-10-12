resource "vault_cf_auth_backend_role" "cf_auth_backend_roles" {
  for_each = var.cf_auth_backend_roles

  mount                   = each.value.mount
  name                    = each.value.name
  alias_metadata          = each.value.alias_metadata
  bound_application_ids   = each.value.bound_application_ids
  bound_instance_ids      = each.value.bound_instance_ids
  bound_organization_ids  = each.value.bound_organization_ids
  bound_space_ids         = each.value.bound_space_ids
  disable_ip_matching     = each.value.disable_ip_matching
  namespace               = each.value.namespace
  token_bound_cidrs       = each.value.token_bound_cidrs
  token_explicit_max_ttl  = each.value.token_explicit_max_ttl
  token_max_ttl           = each.value.token_max_ttl
  token_no_default_policy = each.value.token_no_default_policy
  token_num_uses          = each.value.token_num_uses
  token_period            = each.value.token_period
  token_policies          = each.value.token_policies
  token_ttl               = each.value.token_ttl
  token_type              = each.value.token_type
}

