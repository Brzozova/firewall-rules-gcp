variable "network_name" {
  type        = string
  description = "The name of the network."
}

variable "firewall_rules" {
  type        = any
  description = "The map of firewall rules."
}

variable "project_id" {
  type        = string
  description = <<EOF
    The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  EOF
  default     = null
}