terraform {
  backend "gcs" {}
}

resource "google_compute_firewall" "rules" {
  for_each    = var.firewall_rules
  project     = var.project_id
  name        = "${var.network_name}-${each.key}"
  network     = var.network_name
  description = each.value.description
  priority    = each.value.priority
  target_tags = lookup(each.value, "tags", null)
  allow {
    protocol = each.value.protocol
    ports    = lookup(each.value, "ports", null)
  }
  source_ranges = try(each.value.source_ip_ranges, [])
}
