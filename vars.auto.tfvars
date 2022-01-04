  firewall_rules = {
    "allow-https-imperva" = {
      "protocol"    = "tcp"
      "ports"       = ["443"]
      "priority"    = "1000"
      "tags"        = ["https-imperva"]
      "description" = "Allow http & https communication only via Imperva."
      "source_ip_ranges" = [
        "199.83.128.0/21",
        "149.126.72.0/21",
        "103.28.248.0/22",
        "45.64.64.0/22",
        "185.11.124.0/22",
        "192.230.64.0/18",
        "107.154.0.0/16",
        "45.60.0.0/16",
        "45.223.0.0/16"
      ]
    }
    "allow-https-vpn" = {
      "protocol"    = "tcp"
      "ports"       = ["443"]
      "priority"    = "1000"
      "tags"        = ["https-vpn"]
      "description" = "Allow https communication via VPN."
      "source_ip_ranges" = [
        "160.16.0.0/24",
        "160.16.1.0/24",
        "160.16.3.0/24"
      ]
    }
    "allow-example" = {
      "protocol"         = "all"
      "priority"         = "1000"
      "description"      = "Allow communication from Example project - hello VPC."
      "source_ip_ranges" = ["10.200.0.0/16"]
    }
    "allow-example-default" = {
      "protocol"         = "all"
      "priority"         = "1000"
      "description"      = "Allow communication from Example project - default VPC."
      "source_ip_ranges" = ["10.160.0.0/10"]
    }
    "allow-example2" = {
      "protocol"         = "all"
      "priority"         = "1000"
      "description"      = "Allow communication from Example2 project - hello2 VPC."
      "source_ip_ranges" = ["10.100.0.0/15"]
    }
    "allow-internal" = {
      "protocol"    = "tcp"
      "ports"       = ["1-65535"]
      "priority"    = "65534"
      "description" = "Allow all internal communication between subnetworks."
      "source_ip_ranges" = [
        "10.222.0.0/16",
        "10.223.0.0/16",
        "10.224.0.0/16",
        "10.225.0.0/16"
      ]
    }
    "allow-upcloud" = {
      "protocol"    = "all"
      "priority"    = "1000"
      "description" = "Allow communication from UpCloud private network, SDN & internal site-to-site VPN network."
      "source_ip_ranges" = [
        "10.2.0.0/16",
        "10.120.7.0/24",
        "160.16.18.0/24"
      ]
    }
    "allow-ssh" = {
      "protocol"    = "tcp"
      "ports"       = ["22"]
      "priority"    = "1000"
      "description" = "Allow SSH communication via VPN."
      "source_ip_ranges" = [
        "160.16.0.0/24",
        "160.16.1.0/24",
        "160.16.3.0/24"
      ]
    }
    "allow-icmp" = {
      "protocol"         = "icmp"
      "priority"         = "65534"
      "description"      = "Allow ICMP."
      "source_ip_ranges" = ["0.0.0.0/0"]
    }
  }
