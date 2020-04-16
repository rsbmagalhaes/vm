# Create a new ssh key 
resource "ibm_compute_ssh_key" "ssh_key" {
  label      = "${var.ssh-label}-${random_id.val.hex}"
  notes      = "for VM"
  public_key = "${var.ssh-key}"
}

resource "ibm_compute_vm_instance" "twc_terraform_sample" {
    hostname = "${var.vm-hostname}"
    domain = "${var.vm-domain}"
    os_reference_code = "${var.vm-os-reference-code}"
    post_install_script_uri = "${var.vm-post-install-script-uri}"
    datacenter = "${var.datacenter}"
    network_speed = 10
    hourly_billing = true
    private_network_only = true
    cores = "${var.vm-cpu}"
    memory = "${var.vm-memory}"
    disks = [25]
    user_metadata = "{\"value\":\"newvalue\"}"
    dedicated_acct_host_only = false
    local_disk = false
    ssh_key_ids = ["${ibm_compute_ssh_key.ssh_key.id}"]
    tag = "magal" 
    ssh_key_ids = ["${ibm_compute_ssh_key.ssh_key.id}"]
    #public_vlan_id = 1391277
    #private_vlan_id = 7721931
    #private_security_group_ids = [576973]
}

resource "random_id" "val" {
  byte_length = "2"
}
