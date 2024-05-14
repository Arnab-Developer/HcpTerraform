# HCP terraform

[HCP](https://app.terraform.io/) demo with terraform. In this demo I have hosted a 
static web page in azure blob with terraform.

> :info:
> The full form of HCP is `Hashicorp Cloud Platform`.

If you do not use HCP then terraform directly creates resources into the cloud from your 
CI/CD virtual machine. But if you use HCP then terraform just triggers the process from
your CI/CD virtual machine to the HCP and the actual resource creation into the cloud
happens from the HCP.