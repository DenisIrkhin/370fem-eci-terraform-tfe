locals {
  project = {
    "fem-eci-project" = {
      description = "This is a fem project"
    }
  }
  
  workspace = {
    "fem-eci-tfe" = {
      description = "This is workspace description"
      execution_mode = "local"
      project_id = module.project["fem-eci-project"].id
    }

  }
}
