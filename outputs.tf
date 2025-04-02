# outputs.tf
output "compartment_id" {
  value       = oci_identity_compartment.compartment.id
  description = "The OCID of the created compartment."
}

output "compartment_name" {
  value       = oci_identity_compartment.compartment.name
  description = "The name of the created compartment."
}