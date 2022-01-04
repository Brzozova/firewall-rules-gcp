# Firewall rules

This module is used to firewall rules deployment.

Example of firewall rules map:

```bash
 firewall_rules = {
          "allow-https-imperva" = {
            "protocol" = "tcp"
            "ports" = ["443"]
            "priority" = "1000"
            "tags" = ["https-imperva"]
            "description" = "Allow http & https communication only via Imperva."
            "source_ip_ranges" = ["199.83.128.0/21", "149.126.72.0/21", "103.28.248.0/22", "45.64.64.0/22", "185.11.124.0/22", "192.230.64.0/18", "107.154.0.0/16", "45.60.0.0/16", "45.223.0.0/16"]
        }
        "allow-icmp" = {
            "protocol" = "icmp"
            "priority" = "65534"
            "description" = "Allow ICMP."
            "source_ip_ranges" = ["0.0.0.0/0"]
        }
```

<!-- BEGIN_TF_DOCS -->
## Resources

| Name | Type |
|------|------|
| [google_compute_firewall.rules](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) | resource |

## Providers

| Name | Version |
|------|---------|
| google | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| firewall\_rules | The map of firewall rules. | `any` | n/a | yes |
| network\_name | Name of the network being created | `string` | n/a | yes |
| project\_id | The ID of the project in which the resource belongs. If it is not provided, the provider project is used. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| rules\_id | The ID of the VPC being created |

<!-- END_TF_DOCS -->
