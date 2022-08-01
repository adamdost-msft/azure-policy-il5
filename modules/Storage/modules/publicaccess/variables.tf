variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the Storage Public Access Policy"
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the Storage Public Access Policy"
    default = "Deny"
}