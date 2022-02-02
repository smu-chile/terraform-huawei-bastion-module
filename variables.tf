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

variable "flavor_id" {
  type        = string
  description = "Huawei Instance Id"
}

variable "default_tags" {
  description = "Default tag"
}

variable "cpu_core_count" {
  type        = string
  default     = "4"
  description = "CPU Core Count"
}

variable "memory_size" {
  type        = string
  default     = "8"
  description = "RAM"
}

variable "ingress-cidr" {
  description = "cidr para reglas ingress security group"
  default     = "0.0.0.0/0"
}

variable "ingress-cidr-ansible" {
  description = "cidr para acceso ansible"
  default     = ""
}