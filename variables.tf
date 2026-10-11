variable "compute_region_per_instance_configs" {
  description = <<EOT
Map of compute_region_per_instance_configs, attributes below
Required:
    - name
    - region_instance_group_manager
Optional:
    - deletion_policy
    - minimal_action
    - most_disruptive_allowed_action
    - project
    - region
    - remove_instance_on_destroy
    - remove_instance_state_on_destroy
    - preserved_state (block):
        - disk (optional, block):
            - delete_rule (optional)
            - device_name (required)
            - mode (optional)
            - source (required)
        - external_ip (optional, block):
            - auto_delete (optional)
            - interface_name (required)
            - ip_address (optional, block):
                - address (optional)
        - internal_ip (optional, block):
            - auto_delete (optional)
            - interface_name (required)
            - ip_address (optional, block):
                - address (optional)
        - metadata (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name                             = string
    region_instance_group_manager    = string
    deletion_policy                  = optional(string)
    minimal_action                   = optional(string)
    most_disruptive_allowed_action   = optional(string)
    project                          = optional(string)
    region                           = optional(string)
    remove_instance_on_destroy       = optional(bool)
    remove_instance_state_on_destroy = optional(bool)
    preserved_state = optional(object({
      disk = optional(list(object({
        delete_rule = optional(string)
        device_name = string
        mode        = optional(string)
        source      = string
      })))
      external_ip = optional(list(object({
        auto_delete    = optional(string)
        interface_name = string
        ip_address = optional(object({
          address = optional(string)
        }))
      })))
      internal_ip = optional(list(object({
        auto_delete    = optional(string)
        interface_name = string
        ip_address = optional(object({
          address = optional(string)
        }))
      })))
      metadata = optional(map(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

