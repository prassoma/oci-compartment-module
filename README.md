# OCI Compartment Module

This Terraform module creates a new compartment in Oracle Cloud Infrastructure (OCI).

## Usage

```terraform
module "new_compartment" {
  source = "./oci-compartment" # Or the path to your module

  name                = "MyNewCompartment"
  description         = "This is a new compartment created with Terraform."
  parent_compartment_id = "ocid1.compartment.oc1..your_parent_compartment_ocid" # Replace with your parent compartment OCID
}

output "new_compartment_id" {
  value = module.new_compartment.compartment_id
}

output "new_compartment_name" {
  value = module.new_compartment.compartment_name
}


# How to Use This Module

1. **Save the files:** Create the `oci-compartment` directory and save the `main.tf`, `variables.tf`, `outputs.tf`, and `README.md` files within it.
2. **Reference the module:** In your main Terraform configuration file (e.g., `main.tf` in your root project), you can reference this module using the `module` block.
3. **Provide input variables:** When you instantiate the module, you need to provide values for the input variables defined in `variables.tf`.
4. **Apply Terraform:** Run `terraform init` to initialize your Terraform project and then `terraform apply` to create the compartment.
5. **View outputs:** After successful creation, Terraform will display the output values defined in `outputs.tf`.

**Example Usage in your Root `main.tf`:**

```terraform
# In your root main.tf
module "my_new_compartment" {
  source = "./oci-compartment" # Assuming the oci-compartment directory is in the same root directory

  name                = "MyApplicationCompartment"
  description         = "Compartment for my application resources."
  parent_compartment_id = "ocid1.compartment.oc1..your_root_compartment_ocid" # Replace with your root compartment OCID
}

output "application_compartment_id" {
  value = module.my_new_compartment.compartment_id
}

output "application_compartment_name" {
  value = module.my_new_compartment.compartment_name
}

# OCI Compartment Module

This Terraform module creates a new compartment in Oracle Cloud Infrastructure (OCI).

## Usage

```terraform
module "new_compartment" {
  source = "./oci-compartment" # Or the path to your module

  name                = "MyNewCompartment"
  description         = "This is a new compartment created with Terraform."
  parent_compartment_id = "ocid1.compartment.oc1..your_parent_compartment_ocid" # Replace with your parent compartment OCID
}

output "new_compartment_id" {
  value = module.new_compartment.compartment_id
}
