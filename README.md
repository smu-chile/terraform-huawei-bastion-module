## Architecture Diagram

![Architecture Diagram](docs/images/architecture_diagram.png)



## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0.6 |
| <a name="requirement_huaweicloud"></a> [huaweicloud](#requirement\_huaweicloud) | ~> 1.26.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_huaweicloud"></a> [huaweicloud](#provider\_huaweicloud) | ~> 1.26.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [huaweicloud_compute_eip_associate.associated](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_eip_associate) | resource |
| [huaweicloud_compute_instance.bastion](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_instance) | resource |
| [huaweicloud_compute_keypair.bastion](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/compute_keypair) | resource |
| [huaweicloud_networking_secgroup.bastion](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/networking_secgroup) | resource |
| [huaweicloud_networking_secgroup_rule.inbound_ssh](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/networking_secgroup_rule) | resource |
| [huaweicloud_networking_secgroup_rule.outbound_ssh](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/networking_secgroup_rule) | resource |
| [huaweicloud_vpc_eip.myeip](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/resources/vpc_eip) | resource |
| [huaweicloud_availability_zones.myaz](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/availability_zones) | data source |
| [huaweicloud_compute_flavors.flavors](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/compute_flavors) | data source |
| [huaweicloud_images_image.bastion](https://registry.terraform.io/providers/huaweicloud/huaweicloud/latest/docs/data-sources/images_image) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default tag | `any` | n/a | yes |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | RAM | `string` | `"8"` | no |
| <a name="input_name"></a> [name](#input\_name) | Prefix name | `string` | n/a | yes |
| <a name="input_public_key"></a> [public\_key](#input\_public\_key) | SSH public key | `string` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet Network ID | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC Id | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bastion_ip"></a> [bastion\_ip](#output\_bastion\_ip) | n/a |