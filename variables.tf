##----------------------------------------------------------------------------------
#Module      : LABEL
#Description : Terraform label module variables.
##----------------------------------------------------------------------------------

variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list(any)
  default     = []
  description = "label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "managedby" {
  type        = string
  default     = ""
  description = ""
}

#Module      : KEY PAIR
#Description : Terraform module key pair variables.
variable "public_key" {
  type        = string
  default     = ""
  description = "Name  (e.g. `ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQ`)."
  sensitive   = true
}

variable "key_path" {
  type        = string
  default     = ""
  description = "Name  (e.g. `~/.ssh/id_rsa.pub`)."
}

variable "enable_key_pair" {
  type        = bool
  default     = true
  description = "A boolean flag to enable/disable key pair."
}
variable "enable_private_key" {
  type        = bool
  default     = false
  description = "Determines whether a private key will be created"
}
variable "private_key_algorithm" {
  type        = string
  default     = "RSA"
  description = "Name of the algorithm to use when generating the private key. Currently-supported values are `RSA` and `ED25519`"
}
variable "private_key_rsa_bits" {
  type        = number
  default     = 2048
  description = "When algorithm is `RSA`, the size of the generated RSA key, in bits (default: `2048`)"
}
