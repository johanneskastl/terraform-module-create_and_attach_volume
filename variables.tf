#

variable "desired_number" {
  type        = number
  description = "How many volumes to create"
  default     = 1
}

variable "volume_desired_size" {
  description = "Size of the volume to create"
}

variable "instances_to_attach_to" {
  type        = list
  description = "List of instances to attach the volumes to"
}

variable "module_depends_on" {
  description = "Explicit dependency on other resource to allow ordering of volume attachments"
  default     = []
}
