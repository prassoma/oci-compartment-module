# variables.tf
variable "name" {
  type        = string
  description = "The name of the compartment to be created."
}

variable "description" {
  type        = string
  description = "A description for the compartment."
}

variable "parent_compartment_id" {
  type        = string
  description = "The OCID of the parent compartment in which to create the new compartment."
}
