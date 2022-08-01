variable "enable_policy" {
    type = string
    description = "Optional. Configure whether or not to deploy the Azure Compute Policies."
    default = "true"
}
variable "policy_effect" {
    type = string
    description = "Optional. Value of the effect parameter for the Azure Compute Policies."
    default = "Deny"
}