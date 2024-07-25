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

    "fem-eci-network" = {
      description = "This is third workspace for managing AWS networks"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/372fem-eci-terraform-aws-network"

      variables = [
        {
          category = "terraform"
          hcl      = true
          key      = "azs"
          value    = jsonencode(["us-west-2a", "us-west-2b"])
        },
        {
          category = "terraform"
          key      = "cidr"
          value    = "10.0.0.0/16"
        },
        {
          category = "terraform"
          key      = "name"
          value    = "fem-eci"
        },
      ]  
    }

    "fem-eci-clusters-prod" = {
      description = "This is forth workspace for managing AWS clusters"
      execution_mode = "remote"
      project_id = module.project["fem-eci-project"].id
      vcs_repo_identifier = "${var.github_organization_name}/372fem-eci-terraform-aws-cluster"

            variables = [
        {
          category = "terraform"
          key      = "domain"
          value    = "idenis.click"
        },
        {
          category = "terraform"
          key      = "environment"
          value    = "prod"
        },
        {
          category = "terraform"
          key      = "name"
          value    = "fem-eci-denisirkhin"
        },
        {
          category = "terraform"
          key      = "vpc_name"
          value    = "fem-eci"
        },
      ]
    }

  }
}
