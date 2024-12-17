variable "region" {
  type    = string
  default = "eastus"
}

//vault address
variable "vault_addr" {
  type    = string
  default = "https://vault-public-vault-568210d2.b06d58cb.z1.hashicorp.cloud:8200"
}

//vault token
variable "vault_token" {
  type    = string
  default = "hvs.CAESIK0YZAvNKb2zVohAuz5I90ce064FcVUVfk2pEAgMF5v5GikKImh2cy5ZQ1R6RXZ6MGxyZnpsRW44a3U0ajE4Y3UuVWhUQTcQzsKZAg"
}

//OPENAI_API_VERSION
variable "openai_api_version" {
  type    = string
  default = "2024-02-01"
}
//OPENAI_API_TYPE
variable "openai_api_type" {
  type    = string
  default = "azuread"
}