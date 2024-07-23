locals {
  project = {
    "fem-eci-project" = {
      description = "This is a fem project"
    }
  }
  
  workspace = {
    "fem-eci-tfe" = {
      description = "This is workspace description"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "denisirkhin/370fem-eci-terraform-tfe"
    }

  }
}
