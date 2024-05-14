module "name" {
  source           = "../../modules/name"
  application_name = local.application_name
  environment_name = local.environment_name
}

module "common" {
  source     = "../../modules/common"
  scope_name = module.name.scope_name
  location   = "North Europe"

  storage = {
    type             = "Standard"
    replication_type = "LRS"
    home_page        = "../../../src/index.html"
    error_page       = "../../../src/error.html"
  }
}