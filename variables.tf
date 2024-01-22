variable "network_security_rule" {
  description = "Reference - https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule"

  type = object({
    name                        = string
    resource_group_name         = string
    network_security_group_name = string

    protocol  = string
    access    = string
    priority  = string
    direction = string

    source_address_prefix        = string
    source_address_prefixes      = list(string)
    destination_address_prefix   = string
    destination_address_prefixes = list(string)

    source_port_range                          = string
    destination_port_range                     = string
    destination_port_ranges                    = list(string)
    destination_application_security_group_ids = list(string)

  })
}