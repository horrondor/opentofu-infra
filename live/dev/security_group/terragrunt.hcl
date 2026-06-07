include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../../modules/security_group"
}

dependency "vpc" {
  config_path = "../vpc"
}

locals {
  env_vars = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

inputs = {
  project_name = local.env_vars.locals.environment

  vpc_id = dependency.vpc.outputs.vpc_id
  
  ssh_allowed_cidrs = local.env_vars.locals.ssh_allowed_cidrs
}