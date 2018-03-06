#ip_address - ASG address
output "autoscale_group_address" {
  value = "http://${ibm_lb.local_lb.ip_address}"
}
