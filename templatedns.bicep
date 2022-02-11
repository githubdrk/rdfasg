param dnsZonesName string

resource dnsZonesName_resource 'Microsoft.Network/dnsZones@2016-04-01' = {
  name: dnsZonesName
  location: 'global'
  tags: {}
  properties: {}
  dependsOn: []
}