<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 3.13.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_conatiner_registry"></a> [conatiner\_registry](#module\_conatiner\_registry) | ./modules/ContainerRegistry | n/a |
| <a name="module_storage"></a> [storage](#module\_storage) | ./modules/Storage | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acr_policy"></a> [acr\_policy](#input\_acr\_policy) | The configuration block policy parameter for the Azure Container Registry policy | <pre>object({<br>    enable_policy = string<br>    policy_effect = string<br>  })</pre> | <pre>{<br>  "enable_policy": "true",<br>  "policy_effect": "Deny"<br>}</pre> | no |
| <a name="input_stg_policy"></a> [stg\_policy](#input\_stg\_policy) | The configuration block policy parameter for the Azure Storage policy | <pre>object({<br>    enable_policy = string<br>    policy_effect = string<br>  })</pre> | <pre>{<br>  "enable_policy": "true",<br>  "policy_effect": "Deny"<br>}</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->