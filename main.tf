####----------------------------------------------------------------------------------
#Module      : labels
#Description : This terraform module is designed to generate consistent label names and tags
#              for resources. You can use terraform-labels to implement a strict naming
#              convention.
####----------------------------------------------------------------------------------

module "labels" {
  source = "git::git@github.com:slovink/terraform-aws-labels.git"

  name        = var.name
  environment = var.environment
  repository  = var.repository
  attributes  = var.attributes
  label_order = var.label_order
  managedby   = var.managedby
}
####----------------------------------------------------------------------------------
#Module      : KEY PAIR
#Description : Terraform module for generating or importing an SSH public key file into AWS.
####----------------------------------------------------------------------------------

resource "aws_key_pair" "default" {
  count      = var.enable_key_pair == true ? 1 : 0
  key_name   = module.labels.id
  public_key = var.public_key == "" ? file(var.key_path) : var.public_key
  tags       = module.labels.tags
}
##----------------------------------------------------------------------------------
## resource for generating or importing an SSH private key file into AWS.
##----------------------------------------------------------------------------------

resource "tls_private_key" "default" {
  count = var.enable_key_pair && var.enable_private_key ? 1 : 0

  algorithm = var.private_key_algorithm
  rsa_bits  = var.private_key_rsa_bits
}
