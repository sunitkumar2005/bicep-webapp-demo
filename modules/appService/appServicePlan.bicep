param appServicePlanNameParam string
param appServicePlanSkuParam object
param environmentParam string

var location = resourceGroup().location
var appServicePlanName = '${appServicePlanNameParam}-${environmentParam}'

resource appServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: appServicePlanName
  location: location
  kind: ''
  properties: {
    
  }
  sku: appServicePlanSkuParam
}
