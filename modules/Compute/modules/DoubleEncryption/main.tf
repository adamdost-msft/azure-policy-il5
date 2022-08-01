resource "azurerm_policy_definition" "os_double_encrytion" {

  count        = var.enable_policy == "true" ? 1 : 0
  name         = "os_double_encrytion"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Azure DoD IL-5 Compliance - Managed disks should be double encrypted with both platform-managed and customer-managed keys"
  description  = "Azure DoD IL-5 Compliance - Managed disks should be double encrypted with both platform-managed and customer-managed keys."

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
            "equals" : "Microsoft.Compute/diskEncryptionSets"
          },
          {
            "field" : "Microsoft.Compute/diskEncryptionSets/encryptionType",
            "notEquals" : "EncryptionAtRestWithPlatformAndCustomerKeys"
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
