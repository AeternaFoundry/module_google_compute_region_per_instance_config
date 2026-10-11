output "compute_region_per_instance_configs_id" {
  description = "Map of id values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no id are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_region_per_instance_configs_deletion_policy" {
  description = "Map of deletion_policy values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_region_per_instance_configs_minimal_action" {
  description = "Map of minimal_action values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no minimal_action are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.minimal_action if v.minimal_action != null && length(v.minimal_action) > 0 }
}
output "compute_region_per_instance_configs_most_disruptive_allowed_action" {
  description = "Map of most_disruptive_allowed_action values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no most_disruptive_allowed_action are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.most_disruptive_allowed_action if v.most_disruptive_allowed_action != null && length(v.most_disruptive_allowed_action) > 0 }
}
output "compute_region_per_instance_configs_name" {
  description = "Map of name values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no name are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_region_per_instance_configs_preserved_state" {
  description = "Map of preserved_state values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no preserved_state are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => one(v.preserved_state) if v.preserved_state != null && length(v.preserved_state) > 0 }
}
output "compute_region_per_instance_configs_project" {
  description = "Map of project values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no project are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_region_per_instance_configs_region" {
  description = "Map of region values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no region are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_region_per_instance_configs_region_instance_group_manager" {
  description = "Map of region_instance_group_manager values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no region_instance_group_manager are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.region_instance_group_manager if v.region_instance_group_manager != null && length(v.region_instance_group_manager) > 0 }
}
output "compute_region_per_instance_configs_remove_instance_on_destroy" {
  description = "Map of remove_instance_on_destroy values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no remove_instance_on_destroy are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.remove_instance_on_destroy if v.remove_instance_on_destroy != null }
}
output "compute_region_per_instance_configs_remove_instance_state_on_destroy" {
  description = "Map of remove_instance_state_on_destroy values across all compute_region_per_instance_configs, keyed the same as var.compute_region_per_instance_configs except keys with no remove_instance_state_on_destroy are omitted"
  value       = { for k, v in google_compute_region_per_instance_config.compute_region_per_instance_configs : k => v.remove_instance_state_on_destroy if v.remove_instance_state_on_destroy != null }
}

