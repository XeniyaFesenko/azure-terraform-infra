# ARM provider block -rekhu
provider "azurerm" {
  version = "~>2.0"
  features {}
}
# Terraform backend configuration block -precreated
terraform {
  backend "azurerm" {
    resource_group_name  = "poc"
    storage_account_name = "xentfs"
    container_name       = "xentfs-container"
    key                  = "xentfs-container.tfstate"
  }
}