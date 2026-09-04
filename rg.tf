resource "azurerm_resource_group" "name"
name = "re-demo"
location = "eastus"
resource "azapi_resource" "cosmosTable" {
  type  = "Microsoft.DocumentDB/databaseAccounts/tables@2021-06-15"
  parent_id = "The ID of `Microsoft.DocumentDB/databaseAccounts`"
  name  = "name"
  body = {
    properties = {
      resource = {
        id = "id"
      }
      options = {
        throughput = "throughput"
      }
    }
  }
}
