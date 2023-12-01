module "sandboxaftdev" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "patelax+sandboxaftdev@amazon.com"
    AccountName               = "sandboxaftdev"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "patelax+sandboxaftdev@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFTDev"
  }

  account_tags = {
    "Tutorial" = "AFTDev"
  }

  change_management_parameters = {
    change_requested_by = "AFT Dev"
    change_reason       = "AFT DEv"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "development-customizations"
}

module "sandboxaftqa" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "patelax+sandboxaftqa@amazon.com"
    AccountName               = "sandboxaftqa"
    ManagedOrganizationalUnit = "AFT"
    SSOUserEmail              = "patelax+sandboxaftqa@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFTqa"
  }

  account_tags = {
    "Tutorial" = "AFTqa"
  }

  change_management_parameters = {
    change_requested_by = "AFT QA"
    change_reason       = "AFT QA"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "qa-customizations"
}