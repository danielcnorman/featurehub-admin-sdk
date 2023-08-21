# FeaturehubAdminSdk::PortfolioAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **applications** | [**Array&lt;Application&gt;**](Application.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::PortfolioAllOf.new(
  id: null,
  name: null,
  description: null,
  version: null,
  organization_id: null,
  groups: null,
  applications: null,
  when_archived: null
)
```

