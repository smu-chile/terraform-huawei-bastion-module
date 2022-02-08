variable "name" {
  type        = string
  description = "Prefix name"
}

variable "subnet_id" {
  type        = string
  description = "Subnet Network ID"
}

variable "vpc_id" {
  type        = string
  description = "VPC Id"
}

variable "public_key" {
  type        = string
  description = "SSH public key"
}

variable "default_tags" {
  description = "Default tag"
}

variable "bastion_flavor_id" {
  type        = string
  default     = ""
  description = "Flavor of compute instance"
}

variable "ingress-cidr" {
  description = "cidr para reglas ingress security group"
  default     = "[\"0.0.0.0/0\"]"
}

variable "ingress-cidr-ansible" {
  description = "cidr para acceso ansible"
  default     = ""
}