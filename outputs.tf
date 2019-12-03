#

output "volumes" {
  value = openstack_blockstorage_volume_v2.volumes
}

output "volume_associations" {
  value = openstack_compute_volume_attach_v2.volume_associations
}
