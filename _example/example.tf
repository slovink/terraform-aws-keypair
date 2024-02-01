provider "aws" {
  region = "ap-southeast-2"
}

module "keypair" {
  source = "./../"

  name        = "yada"
  environment = "test"
  label_order = ["name", "environment"]

  enable_key_pair = true
  public_key      = "ssh-rsa xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
}
