variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the Storage CMK"
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the Storage CMK policy"
    default = "Deny"
}