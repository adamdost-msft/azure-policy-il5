resource "azurerm_policy_definition" "acr_pe" {

  count        = var.enable_policy == "true" ? 1 : 0
  name         = "acr_pe_il5"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Azure DoD IL-5 Compliance - Ensure Private Endpoints are on Azure Container Registry"
  description  = "Azure DoD IL-5 Compliance - Use Private Endpoints to manage access to the Azure Container Registry and ensure that impact level 5 data is not exposed to the public internet and only available in the local network."

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
            "count" : {
              "field" : "Microsoft.ContainerRegistry/registries/privateEndpointConnections[*]",
              "where" : {
                "field" : "Microsoft.ContainerRegistry/registries/privateEndpointConnections[*].privateLinkServiceConnectionState.status",
                "equals" : "Approved"
              }
            },
            "less" : 1
          }
        ]
      },
      "then" : {
        "effect" : "[parameters('effect')]"
    } }
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
