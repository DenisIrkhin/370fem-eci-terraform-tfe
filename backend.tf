terraform {
  cloud {
    organization = "555"

    workspaces {
      name = "fem-eci-workspace"
    }
  }
}
