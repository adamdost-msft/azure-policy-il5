module "double_encryption" {
    source = "./modules/DoubleEncryption"
    enable_policy = var.enable_policy
    policy_effect = var.policy_effect
}