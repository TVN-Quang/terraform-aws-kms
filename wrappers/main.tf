module "wrapper" {
  source = "../"

  for_each = var.items

  aliases                                = try(each.value.aliases, var.defaults.aliases, [])
  aliases_use_name_prefix                = try(each.value.aliases_use_name_prefix, var.defaults.aliases_use_name_prefix, false)
  bypass_policy_lockout_safety_check     = try(each.value.bypass_policy_lockout_safety_check, var.defaults.bypass_policy_lockout_safety_check, null)
  computed_aliases                       = try(each.value.computed_aliases, var.defaults.computed_aliases, {})
  create                                 = try(each.value.create, var.defaults.create, true)
  create_external                        = try(each.value.create_external, var.defaults.create_external, false)
  create_replica                         = try(each.value.create_replica, var.defaults.create_replica, false)
  create_replica_external                = try(each.value.create_replica_external, var.defaults.create_replica_external, false)
  custom_key_store_id                    = try(each.value.custom_key_store_id, var.defaults.custom_key_store_id, null)
  customer_master_key_spec               = try(each.value.customer_master_key_spec, var.defaults.customer_master_key_spec, null)
  deletion_window_in_days                = try(each.value.deletion_window_in_days, var.defaults.deletion_window_in_days, null)
  description                            = try(each.value.description, var.defaults.description, null)
  enable_default_policy                  = try(each.value.enable_default_policy, var.defaults.enable_default_policy, true)
  enable_key_rotation                    = try(each.value.enable_key_rotation, var.defaults.enable_key_rotation, true)
  enable_route53_dnssec                  = try(each.value.enable_route53_dnssec, var.defaults.enable_route53_dnssec, false)
  grants                                 = try(each.value.grants, var.defaults.grants, {})
  is_enabled                             = try(each.value.is_enabled, var.defaults.is_enabled, null)
  key_administrators                     = try(each.value.key_administrators, var.defaults.key_administrators, [])
  key_asymmetric_public_encryption_users = try(each.value.key_asymmetric_public_encryption_users, var.defaults.key_asymmetric_public_encryption_users, [])
  key_asymmetric_sign_verify_users       = try(each.value.key_asymmetric_sign_verify_users, var.defaults.key_asymmetric_sign_verify_users, [])
  key_hmac_users                         = try(each.value.key_hmac_users, var.defaults.key_hmac_users, [])
  key_material_base64                    = try(each.value.key_material_base64, var.defaults.key_material_base64, null)
  key_owners                             = try(each.value.key_owners, var.defaults.key_owners, [])
  key_service_roles_for_autoscaling      = try(each.value.key_service_roles_for_autoscaling, var.defaults.key_service_roles_for_autoscaling, [])
  key_service_users                      = try(each.value.key_service_users, var.defaults.key_service_users, [])
  key_statements                         = try(each.value.key_statements, var.defaults.key_statements, {})
  key_symmetric_encryption_users         = try(each.value.key_symmetric_encryption_users, var.defaults.key_symmetric_encryption_users, [])
  key_usage                              = try(each.value.key_usage, var.defaults.key_usage, null)
  key_users                              = try(each.value.key_users, var.defaults.key_users, [])
  multi_region                           = try(each.value.multi_region, var.defaults.multi_region, false)
  override_policy_documents              = try(each.value.override_policy_documents, var.defaults.override_policy_documents, [])
  policy                                 = try(each.value.policy, var.defaults.policy, null)
  primary_external_key_arn               = try(each.value.primary_external_key_arn, var.defaults.primary_external_key_arn, null)
  primary_key_arn                        = try(each.value.primary_key_arn, var.defaults.primary_key_arn, null)
  route53_dnssec_sources                 = try(each.value.route53_dnssec_sources, var.defaults.route53_dnssec_sources, [])
  source_policy_documents                = try(each.value.source_policy_documents, var.defaults.source_policy_documents, [])
  tags                                   = try(each.value.tags, var.defaults.tags, {})
  valid_to                               = try(each.value.valid_to, var.defaults.valid_to, null)
}
