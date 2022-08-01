variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the ACR Public Access Policy"
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the ACR Public Access Policy"
    default = "Deny"
}