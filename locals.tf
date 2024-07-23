locals {
  project = {
    "fem-eci-project" = {
      description = "This is a fem project"
    }
  }
  
  workspace = {
    "fem-eci-tfe" = {
      description = "This is first workspace for managing TFE"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/370fem-eci-terraform-tfe"
    },
    "fem-eci-github" = {
      description = "This is second workspace for managing GitHub"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/371fem-eci-terraform-github"
    }

  }
}
