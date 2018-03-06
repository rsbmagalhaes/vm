variable "softlayer-username" {
  description = "Your IBM Cloud Infrastructure (SoftLayer) user name."
}
variable "softlayer-api-key" {
  description = "Your IBM Cloud Infrastructure (SoftLayer) API key."
}

variable "ssh-key" {
  default = ""
  description = "The public key contents for the SSH keypair."
}

variable "ssh-label" {
  default = "ssh_key_scale_group"
  description = "An identifying label to assign to the SSH key."
}

variable "lb-connections" {
  default = 250
  description = "The number of connections for the local load balancer."
}

variable "datacenter" {
  default = "dal09"
  description = "The data center for the local load balancer. You can run bluemix cs locations to see a list of all data centers in your region."
}

variable "lb-dedicated" {
  default = false
  description = "Set to true if the local load balancer should be dedicated."
}

variable "lb-service-group-port" {
  default = 80
  description = "The port for the local load balancer service group."
}

variable "lb-service-group-routing-method" {
  default = "CONSISTENT_HASH_IP"
  description = "The routing method for the load balancer group."
}

variable "lb-service-group-routing-type" {
  default = "HTTP"
  description = "The routing type for the group."
}

variable "lb-service-group-routing-allocation" {
  default = 100
  description = "The allocation field for the load balancer service group."
}

variable "auto-scale-name" {
  default = "sample-http-cluster"
  description = "The name of the auto scaling group."
}

variable "auto-scale-region" {
  default = "na-usa-central-1"
  description = "The region for the auto scaling group."
}

variable "auto-scale-cooldown" {
  default = 30
  description = "The duration, expressed in seconds, that the auto scaling group waits before performing another scaling action."
}

variable "auto-scale-minimum-member-count" {
  default = 1
  description = ""
}

variable "auto-scale-maximumm-member-count" {
  default = 10
  description = "The greatest number of virtual guest members that are allowed in the auto scaling group."
}

variable "auto-scale-termination-policy" {
  default = "CLOSEST_TO_NEXT_CHARGE"
  description = "The termination policy for the auto scaling group."
}

variable "auto-scale-lb-service-port" {
  default = 80
  description = "The port number in a local load balancer."
}

variable "auto-scale-lb-service-health-check-type" {
  default = "HTTP"
  description = "Specifies the type of health check in a local load balancer. You can also use this value to specify custom HTTP methods."
}

variable "vm-hostname" {
  default = "virtual-guest"
  description = "Hostname for the computing instance."
}

variable "vm-domain" {
  default = "example.com"
  description = "Domain for the computing instance."
}

variable "vm-cores" {
  default = 1
  description = "The number of CPU cores to allocate."
}

variable "vm-memory" {
  default = 4096
  description = "The amount of memory to allocate, expressed in MBs."
}

variable "vm-os-reference-code" {
  default = "CENTOS_7"
  description = "The operating system reference code that is used to provision the computing instance."
}

variable "vm-post-install-script-uri" {
  default = "https://raw.githubusercontent.com/Cloud-Schematics/asg/master/nginx.sh"
  description = "The URI for the NGINX install script."
}

variable "scale-policy-name" {
  default = "scale-policy"
  description = "The name of the auto scaling policy."
}

variable "scale-policy-type" {
  default = "ABSOLUTE"
  description = "The scale type for the auto scaling policy. Accepted values are ABSOLUTE, RELATIVE, and PERCENT."
}

variable "scale-policy-scale-amount" {
  default = 2
  description = "A count of the scaling actions to perform upon any trigger hit."
}

variable "scale-policy-cooldown" {
  default = 35
  description = "The duration, expressed in seconds, that the policy waits after the last action date before performing another scaling action."
}
