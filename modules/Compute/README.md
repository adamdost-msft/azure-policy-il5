<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_double_encryption"></a> [double\_encryption](#module\_double\_encryption) | ./modules/DoubleEncryption | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_policy"></a> [enable\_policy](#input\_enable\_policy) | Optional. Configure whether or not to deploy the Azure Compute Policies. | `string` | `"true"` | no |
| <a name="input_policy_effect"></a> [policy\_effect](#input\_policy\_effect) | Optional. Value of the effect parameter for the Azure Compute Policies. | `string` | `"Deny"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->