variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the Double Encryption Policy."
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the Double Encryption Policy."
    default = "Deny"
}