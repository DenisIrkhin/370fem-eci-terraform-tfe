# 370fem-eci-terraform-tfe

## Terraform Cloud

If you see GitHub App (Installed) when adding a VCS Provider in the Configuring a Version Control Provider lesson but you DO NOT see Terraform listed in your GitHub account under Settings > Applications > Installed GitHub Apps, follow the steps below:

In Terraform, go to Projects & Workspaces
In your fem-eci-project, select the fem-eci-tfe workspace
In this workspace, go to Settings > Version Control and click on Connect to version control
Choose Version Control Workflow
Under GitHub, choose GitHub App (make sure allow popups)
You can stop at this step (you don't need to select any repositories). Once the VCS Provider is added, you can view it in your GitHub account under Settings > Application > Installed GitHub Apps. Later in the lesson you'll need the installation ID which can be found in the URL when you click on the configure button.
