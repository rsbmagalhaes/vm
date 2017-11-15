# NGINX Auto Scale Group

An [IBM Cloud Schematics](https://console.bluemix.net/docs/services/schematics/index.html) template to launch an auto-scaling group of virtual machines with a local load balancer. NGINX is loaded onto the virtual machine images.

Schematics uses [Terraform](https://www.terraform.io/) as the infrastructure as code engine. With this template, you can provision and manage infrastructure as a single unit.

See the [Terraform provider docs](https://ibm-bluemix.github.io/tf-ibm-docs/) for available resource for the IBM Cloud.

## Create an environment with this template

Environments can be used to separate software components into development tiers (e.g. staging, QA, and production).

1. In IBM Cloud, go to the menu and select the [Schematics dashboard](https://console.bluemix.net/schematics).
2. In the left navigation menu, select **Templates** to access the template catalog.
3. Click **Create** on the auto-scaling group template. You are taken to a configuration page where you can define metadata about your environment. 
4. Define values for your variables according to the following table. 

### Variables

|Variable Name|Description|Default Value|
|-------------|-----------|-------------|
|auto-scale-cooldown|The duration, expressed in seconds, that the auto scaling group waits before performing another scaling action.|30|
|auto-scale-lb-service-health-check-type|Specifies the type of health check in a local load balancer. You can also use this value to specify custom HTTP methods.|HTTP|
|auto-scale-lb-service-port|The port number in a local load balancer.|80|
|auto-scale-maximumm-member-count|The greatest number of virtual guest members that are allowed in the auto scaling group.|10|
|auto-scale-minimum-member-count|The fewest number of virtual guest members allowed in the auto scaling group.|1|
|auto-scale-name|Name of the auto scaling group.|sample-http-cluster|
|auto-scale-region|Regional group for the auto scaling group.|na-usa-central-1|
|auto-scale-termination-policy|The termination policy for the auto scaling group.|CLOSEST_TO_NEXT_CHARGE|
|datacenter|The data center for the local load balancer. You can run `bluemix cs locations` to see a list of all data centers in your region.|dal09|
|lb-connections|The number of connections for the local load balancer.|250|
|lb-dedicated|Set to `true` if the local load balancer should be dedicated. |false|
|lb-service-group-port|The port for the local load balancer service group.|80|
|lb-service-group-routing-allocation|The allocation field for the load balancer service group.|100|
|lb-service-group-routing-method|The routing method for the load balancer group.|CONSISTENT_HASH_IP|
|lb-service-group-routing-type|The routing type for the group.|HTTP|
|scale-policy-cooldown|The duration, expressed in seconds, that the policy waits after the last action date before performing another scaling action.|35|
|scale-policy-name|Name of the auto scaling policy.|scale-policy|
|scale-policy-scale-amount|A count of the scaling actions to perform upon any trigger hit.|2|
|scale-policy-type|The scale type for the auto scaling policy. Accepted values are `ABSOLUTE`, `RELATIVE`, and `PERCENT`.|ABSOLUTE|
|softlayer-api-key|Your IBM Cloud Infrastructure (SoftLayer) API key.| |
|softlayer-username|Your IBM Cloud Infrastructure (SoftLayer) user name.||
|ssh-key|The public key contents for the SSH keypair. | |
|ssh-label|An identifying label to assign to the SSH key.|ssh_key_scale_group|
|vm-cores|The number of CPU cores to allocate.|1|
|vm-domain|Domain for the computing instance.|example.com|
|vm-hostname|Hostname for the computing instance.|virtual-guest|
|vm-memory|The amount of memory to allocate, expressed in megabytes.|4096|
|vm-os-reference-code|An operating system reference code that is used to provision the computing instance. [Get a complete list of the OS reference codes available](https://api.softlayer.com/rest/v3/SoftLayer_Virtual_Guest_Block_Device_Template_Group/getVhdImportSoftwareDescriptions.json?objectMask=referenceCode) (use your API key as the password to log in). |CENTOS_7|
|vm-post-install-script-uri|The URI for the NGINX install script. |https://raw.githubusercontent.com/Cloud-Schematics/asg/master/nginx.sh |


## Next steps

After setting up your environment with this template, you can run **Plan** to preview how Schematics will deploy resources to your environment. When you are ready to deploy the cluster, run **Apply**.