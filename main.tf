# Creates Network Security Rule and the reference link is https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_rule
resource "azurerm_network_security_rule" "network_security_rule" {
  name                        = var.network_security_rule.name
  resource_group_name         = var.network_security_rule.resource_group_name
  network_security_group_name = var.network_security_rule.network_security_group_name

  protocol  = var.network_security_rule.protocol
  access    = var.network_security_rule.access
  priority  = var.network_security_rule.priority
  direction = var.network_security_rule.direction

  # source_address_prefix, source_address_prefixes,destination_address_prefix , destination_address_prefixes are required.
  # Tags cannot used under source_address_prefixes and destination_address_prefixes.So we need source_address_prefix and destination_address_prefix.
  source_address_prefix        = var.network_security_rule.source_address_prefix
  source_address_prefixes      = var.network_security_rule.source_address_prefixes
  destination_address_prefix   = var.network_security_rule.destination_address_prefix
  destination_address_prefixes = var.network_security_rule.destination_address_prefixes

  source_port_range = var.network_security_rule.source_port_range
  # Destination_port_range and destination_port_ranges required because "*" is not compatible with destination_port_ranges.
  destination_port_range                     = var.network_security_rule.destination_port_range
  destination_port_ranges                    = var.network_security_rule.destination_port_ranges
  destination_application_security_group_ids = var.network_security_rule.destination_application_security_group_ids
}