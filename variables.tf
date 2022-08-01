variable "stg_policy" {
  type = object({
    enable_policy = string
    policy_effect = string
  })
  description = "The configuration block policy parameter for the Azure Storage policy"
  default = {
    enable_policy = "true"
    policy_effect = "Deny"
  }

}
variable "acr_policy" {
  type = object({
    enable_policy = string
    policy_effect = string
  })
  description = "The configuration block policy parameter for the Azure Container Registry policy"
  default = {
    enable_policy = "true"
    policy_effect = "Deny"
  }
}
