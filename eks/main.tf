module "eks" {
  source             = "./vendor/modules/eks"
  ENV                = var.ENV
  PRIVATE_SUBNET_IDS = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS
  PUBLIC_SUBNET_IDS  = data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNET_IDS
  DESIRED_SIZE       = 1
  MAX_SIZE           = 1
  MIN_SIZE           = 1
}