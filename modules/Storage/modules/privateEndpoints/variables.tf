variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the Storage PE Policy"
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the Storage PE Policy"
    default = "Deny"
}