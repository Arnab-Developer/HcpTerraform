# HCP terraform

[HCP](https://app.terraform.io/) demo with terraform. In this demo I have hosted a 
static web page in azure blob with terraform.

If you do not use HCP then terraform directly creates resources into the cloud from your 
CI/CD. But if you use HCP then terraform just triggers the process from your CI/CD to the 
HCP and the actual resource creation into the cloud happens from the HCP.

![HCP](assets/hcp.png)

The full form of HCP is [Hashicorp Cloud Platform](https://developer.hashicorp.com/terraform/cloud-docs).