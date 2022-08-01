module "cmk" {
    source = "./modules/cmk"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}

module "privateEndpoints" {
    source = "./modules/privateEndpoints"
    enable_policy = "Audit"
    policy_effect = var.policy_effect
}

module "publicAccess" {
    source = "./modules/publicaccess"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect  
}