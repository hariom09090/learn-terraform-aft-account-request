module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "pacelo3704+deployspheresanbox@gmail.com"
    AccountName               = "DeploySphereSandbox"
    ManagedOrganizationalUnit = "Deploy Sphere Sandbox"
    SSOUserEmail              = "pacelo3704+deployspheresanbox@gmail.com"
    SSOUserFirstName          = "DeploySphereSandbox"
    SSOUserLastName           = "User"
  }
  

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Deploy Sphere"
    change_reason       = "Deploy Sphere Sandbox"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
