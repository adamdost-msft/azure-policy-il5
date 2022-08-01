resource "azurerm_policy_definition" "acr_public" {

  count        = var.enable_policy == "true" ? 1 : 0
  name         = "acr_public_il5"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Azure DoD IL-5 Compliance - Deny Public Access on Azure Container Registry"
  description  = "Azure DoD IL-5 Compliance - Disabling public network access improves security by ensuring that container registries are not exposed on the public internet. Creating private endpoints can limit exposure of container registry resources."

  metadata = jsonencode(
    {
      "category" : "Cyber",
      "version" : "1.0.0"
    }
  )
  policy_rule = jsonencode(
    {
      "if" : {
        "allOf" : [
          {
            "field" : "type",
            "equals" : "Microsoft.ContainerRegistry/registries"
          },
          {
            "field" : "Microsoft.ContainerRegistry/registries/publicNetworkAccess",
            "notEquals" : "Disabled"
          }
        ]
      },
      "then" : {
        "effect" : "[parameters('effect')]"
      }
    }
  )
  parameters = jsonencode(
    {
      "effect" : {
        "type" : "string",
        "defaultValue" : "${var.policy_effect}",
        "allowedValues" : [
          "Audit",
          "Deny",
          "Disabled"
        ],
        "metadata" : {
          "displayName" : "Effect",
          "description" : "Enable or disable the execution of the policy"
        }
      }
    }
  )
}
