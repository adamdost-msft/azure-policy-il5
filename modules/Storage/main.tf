module "cmk" {
    source = "./modules/cmk"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}

module "privateEndpoints" {
    source = "./modules/privateEndpoints"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}