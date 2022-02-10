var roleDefinitionResourceId = 'b24988ac-6180-42a0-ab88-20f7382dd24c'
var principalId = 'ec6f7c98-8520-4d4e-8c2a-d12346ee8e22'

targetScope = 'subscription'

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(subscription().id, principalId, roleDefinitionResourceId)
  properties: {
    roleDefinitionId: '${subscriptionResourceId('Microsoft.Authorization/roleDefinitions', roleDefinitionResourceId)}'
    principalId: principalId
    principalType: 'ServicePrincipal'
  }
}
