data "azurerm_client_config" "current" {}



resource "azurerm_key_vault" "fg-keyvault" {
  name                        = "fgkeyvault2024"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"


}

resource "azurerm_key_vault_access_policy" "kv_access_policy_01" {
  #This policy adds databaseadmin group with below permissions
  key_vault_id       = azurerm_key_vault.fg-keyvault.id
  tenant_id          = data.azurerm_client_config.current.tenant_id
  object_id          = "86f50fc0-0d0d-4c26-941d-17dd64ed03a6"
  key_permissions    = ["Get", "List"]
  secret_permissions = ["Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set"]

  depends_on = [azurerm_key_vault.fg-keyvault]
}

resource "azurerm_key_vault_access_policy" "kv_access_policy_02" {
  #This policy adds databaseadmin group with below permissions
  key_vault_id       = azurerm_key_vault.fg-keyvault.id
  tenant_id          = data.azurerm_client_config.current.tenant_id
  object_id          = "da96d180-3c89-4f4d-b1c3-2c67dec3218c"
  key_permissions    = ["Get", "List"]
  secret_permissions = ["Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set"]

  depends_on = [azurerm_key_vault.fg-keyvault]
}


resource "azurerm_key_vault_access_policy" "kv_access_policy_03" {
  #This policy adds databaseadmin group with below permissions
  key_vault_id       = azurerm_key_vault.fg-keyvault.id
  tenant_id          = data.azurerm_client_config.current.tenant_id
  object_id          = "ef581861-a1a9-4d40-9fcb-cd6f6b97bf4b"
  key_permissions    = ["Get", "List"]
  secret_permissions = ["Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set"]

  depends_on = [azurerm_key_vault.fg-keyvault]
}