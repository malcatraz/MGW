param name string = 'stg${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'mgwstorage66'
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

