# -------------------------------------------------------------
# marteform: Red Teaming Infrastructure Deployment System
# Developed by Ethan Lacerenza
#
# Terraform configuration for deploying red teaming infrastructure
# on Linode cloud platform.
# -------------------------------------------------------------

# Provider configuration for Linode API
provider "linode" {
  version = "~> 1.18" # Specify version for Linode provider
  token   = "YOUR_LINODE_API_TOKEN" # Specify your Linode API token here
}

# Modules
module "smtp" {
  source = "./modules/smtp"
  # Configure the SMTP module
}

module "gophish" {
  source = "./modules/gophish"
  # Configure the GoPhish module
}

module "vulnerability_scanners" {
  source = "./modules/vulnerability_scanners"
  # Configure the Spiderfoot GreenBone-Nessus module
}

module "c2c_framework" {
  source = "./modules/c2c_framework"
  # Configure the C2C Framework module
}

module "evilginx2" {
  source = "./modules/evilginx2"
  # Configure the evilginx2 module
}

module "payload_redirector" {
  source = "./modules/payload_redirector"
  # Configure the Payload Redirector module
}

module "pwndrop" {
  source = "./modules/pwndrop"
  # Configure the PwnDrop module
}
