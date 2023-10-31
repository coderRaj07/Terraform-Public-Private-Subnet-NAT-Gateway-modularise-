module "network" {
  source = "./network"
}

module "instances" {
  source = "./instances"
  public_subnet_id  = module.network.public_subnet_id
  private_subnet_id = module.network.private_subnet_id
}

module "security" {
  source = "./security"
}
