resource "openstack_blockstorage_volume_v2" "volumes" {
  count = var.desired_number
  size  = var.volume_desired_size
}

resource "openstack_compute_volume_attach_v2" "volume_associations" {
  count = var.desired_number
  instance_id = var.instances_to_attach_to[count.index].id
  volume_id = openstack_blockstorage_volume_v2.volumes[count.index].id
}
