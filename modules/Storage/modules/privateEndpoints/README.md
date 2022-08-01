<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_policy_definition.stg_pe](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/policy_definition) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_policy"></a> [enable\_policy](#input\_enable\_policy) | Optional. Configure whether or not to deploy the Storage PE Policy | `string` | `"true"` | no |
| <a name="input_policy_effect"></a> [policy\_effect](#input\_policy\_effect) | Optional. Value of the effect parameter for the Storage PE Policy | `string` | `"Deny"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->