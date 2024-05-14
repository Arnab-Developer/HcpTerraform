locals {
  scope_name_without_dash       = replace(var.scope_name, "-", "")
  scope_name_without_underscore = replace(local.scope_name_without_dash, "_", "")
  scope_name_lower              = lower(local.scope_name_without_underscore)
  plain_scope_name              = local.scope_name_lower
}