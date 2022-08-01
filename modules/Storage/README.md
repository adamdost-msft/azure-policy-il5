<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cmk"></a> [cmk](#module\_cmk) | ./modules/cmk | n/a |
| <a name="module_privateEndpoints"></a> [privateEndpoints](#module\_privateEndpoints) | ./modules/privateEndpoints | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_policy"></a> [enable\_policy](#input\_enable\_policy) | Optional. Configure whether or not to deploy the ACR CMK | `string` | `"true"` | no |
| <a name="input_policy_effect"></a> [policy\_effect](#input\_policy\_effect) | Optional. Value of the effect parameter for the ACR CMK policy | `string` | `"Deny"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->