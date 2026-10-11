resource "google_compute_region_per_instance_config" "compute_region_per_instance_configs" {
  for_each = var.compute_region_per_instance_configs

  name                             = each.value.name
  region_instance_group_manager    = each.value.region_instance_group_manager
  deletion_policy                  = each.value.deletion_policy
  minimal_action                   = each.value.minimal_action
  most_disruptive_allowed_action   = each.value.most_disruptive_allowed_action
  project                          = each.value.project
  region                           = each.value.region
  remove_instance_on_destroy       = each.value.remove_instance_on_destroy
  remove_instance_state_on_destroy = each.value.remove_instance_state_on_destroy

  dynamic "preserved_state" {
    for_each = each.value.preserved_state != null ? [each.value.preserved_state] : []
    content {
      dynamic "disk" {
        for_each = preserved_state.value.disk != null ? preserved_state.value.disk : []
        content {
          delete_rule = disk.value.delete_rule
          device_name = disk.value.device_name
          mode        = disk.value.mode
          source      = disk.value.source
        }
      }
      dynamic "external_ip" {
        for_each = preserved_state.value.external_ip != null ? preserved_state.value.external_ip : []
        content {
          auto_delete    = external_ip.value.auto_delete
          interface_name = external_ip.value.interface_name
          dynamic "ip_address" {
            for_each = external_ip.value.ip_address != null ? [external_ip.value.ip_address] : []
            content {
              address = ip_address.value.address
            }
          }
        }
      }
      dynamic "internal_ip" {
        for_each = preserved_state.value.internal_ip != null ? preserved_state.value.internal_ip : []
        content {
          auto_delete    = internal_ip.value.auto_delete
          interface_name = internal_ip.value.interface_name
          dynamic "ip_address" {
            for_each = internal_ip.value.ip_address != null ? [internal_ip.value.ip_address] : []
            content {
              address = ip_address.value.address
            }
          }
        }
      }
      metadata = preserved_state.value.metadata
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

