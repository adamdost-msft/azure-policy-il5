resource "azurerm_policy_definition" "acr_cmk" {
  
  count = var.enable_policy == "true" ? 1 : 0
  name         = "acr_cmk_il5"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Azure DoD IL-5 Compliance - Customer Managed Key on Azure Container Registry"
  description  = "Azure DoD IL-5 Compliance - Use customer-managed keys to manage the encryption at rest of the contents of your registries. Learn more at https://aka.ms/acr/CMK."

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
            "field" : "Microsoft.ContainerRegistry/registries/encryption.status",
            "notEquals" : "enabled"
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
