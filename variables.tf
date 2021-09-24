variable "name" {
  type        = string
  description = "Prefijo que se usara para nombrar los recursos"
}
variable "subnet_id" {
  type        = string
  description = "Network ID, de subnet"
}
variable "vpc_id" {
  type        = string
  description = "ID de VPC"
}

variable "public_key" {
  type        = string
  description = "Public Key de conexión SSH a bastion"
}

variable "flavor_id" {
  type        = string
  description = "Tipo de instancia de bastion. p.e: s3.large.4"
}

variable "default_tags" {
  description = "tags by default"
}