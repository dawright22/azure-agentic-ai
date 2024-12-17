//output for resource group name
output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

//output for vault address
output "vault_addr" {
  value = var.vault_addr
}

//output for vault token
output "vault_token" {
  value = var.vault_token
}

//Open AI key
output "open_ai_key" {
  value = module.openai.openai_endpoint
} 

//Azure manged identity
output "managed_identity" {
  value = azurerm_user_assigned_identity.chatbot.client_id
}

//Azure OIDC_URL
output "oidc_url" {
  value = module.aks.oidc_issuer_url
}