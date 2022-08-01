variable "stg_policy" {
  type = object({
    enable_policy = string
    policy_effect = string
  })
  description = "value of the policy_rule parameter for the storage policy"
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
  description = "value of the policy_rule parameter for the storage policy"
  default = {
    enable_policy = "true"
    policy_effect = "Deny"
  }
}
