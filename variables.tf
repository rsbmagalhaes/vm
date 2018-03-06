variable "softlayer_username" {}
variable "softlayer_api_key" {}

variable "public_key" {
  default = ""
}

variable "ssh-label" {
  default = "ssh_key_scale_group"
}

variable "lb-connections" {
  default = 250
}

variable "datacenter" {
  default = "dal09"
}

variable "lb-dedicated" {
  default = false
}

variable "lb-service-group-port" {
  default = 80
}

variable "lb-service-group-routing-method" {
  default = "CONSISTENT_HASH_IP"
}

variable "lb-service-group-routing-type" {
  default = "HTTP"
}

variable "lb-service-group-routing-allocation" {
  default = 100
}

variable "auto-scale-name" {
  default = "sample-http-cluster"
}

variable "auto-scale-region" {
  default = "na-usa-central-1"
}

variable "auto-scale-cooldown" {
  default = 30
}

variable "auto-scale-minimum-member-count" {
  default = 1
}

variable "auto-scale-maximumm-member-count" {
  default = 10
}

variable "auto-scale-termination-policy" {
  default = "CLOSEST_TO_NEXT_CHARGE"
}

variable "auto-scale-lb-service-port" {
  default = 80
}

variable "auto-scale-lb-service-health-check-type" {
  default = "HTTP"
}

variable "vm-hostname" {
  default = "virtual-guest"
}

variable "vm-domain" {
  default = "example.com"
}

variable "vm-cores" {
  default = 1
}

variable "vm-memory" {
  default = 4096
}

variable "vm-os-reference-code" {
  default = "CENTOS_7"
}

variable "vm-post-install-script-uri" {
  default = "https://raw.githubusercontent.com/Cloud-Schematics/asg/master/nginx.sh"
}

variable "scale-policy-name" {
  default = "scale-policy"
}

variable "scale-policy-type" {
  default = "ABSOLUTE"
}

variable "scale-policy-scale-amount" {
  default = 2
}

variable "scale-policy-cooldown" {
  default = 35
}
