module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "patelax+sandboxaftvpc@amazon.com"
    AccountName               = "sandboxaftvpc"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "patelax+sandboxaftvpc@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFTvpc"
  }

  account_tags = {
    "Tutorial" = "AFTvpc"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
