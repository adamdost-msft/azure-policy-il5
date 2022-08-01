module "cmk" {
    source = "./cmk"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}

module "privateEndpoints" {
    source = "./privateEndpoints"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}