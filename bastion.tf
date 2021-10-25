data "huaweicloud_images_image" "bastion" {
  name        = "bastion"
  most_recent = true
}

data "huaweicloud_availability_zones" "myaz" {}


data "huaweicloud_compute_flavors" "flavors" {
  count             = var.node_count
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  performance_type  = "normal"
  cpu_core_count    = var.cpu_core_count
  memory_size       = var.memory_size
}

resource "huaweicloud_compute_keypair" "bastion" {
  name       = "${var.name}-bastion-keypair"
  public_key = var.public_key
}

resource "huaweicloud_networking_secgroup" "bastion" {
  name                 = "${var.name}-bastion-sg"
  description          = "SSH security group"
  delete_default_rules = true
}

resource "huaweicloud_networking_secgroup_rule" "inbound_ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = huaweicloud_networking_secgroup.bastion.id
}

resource "huaweicloud_networking_secgroup_rule" "outbound_ssh" {
  direction         = "egress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = huaweicloud_networking_secgroup.bastion.id
}

resource "huaweicloud_compute_instance" "bastion" {
  name                        = "${var.name}-bastion"
  image_id                    = data.huaweicloud_images_image.bastion.id
  flavor_id                   = var.flavor_id
  security_group_ids          = [huaweicloud_networking_secgroup.bastion.id]
  key_pair                    = huaweicloud_compute_keypair.bastion.name
  availability_zone           = data.huaweicloud_availability_zones.myaz.names[0]
  delete_disks_on_termination = true

  network {
    uuid = var.subnet_id
  }
  tags = var.default_tags
}

resource "huaweicloud_vpc_eip" "myeip" {
  publicip {
    type = "5_bgp"
  }
  bandwidth {
    name        = "${var.name}-bastion-eip-bw"
    size        = 8
    share_type  = "PER"
    charge_mode = "traffic"
  }
  tags = var.default_tags
}

resource "huaweicloud_compute_eip_associate" "associated" {
  public_ip   = huaweicloud_vpc_eip.myeip.address
  instance_id = huaweicloud_compute_instance.bastion.id
}