targetScope = 'resourceGroup'

param Resgrp string = resourceGroup().location 

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'stg${resourceGroup().id}'
  location: Resgrp
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}

