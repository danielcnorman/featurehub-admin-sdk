# FeaturehubAdminSdk::FeatureGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **order** | **Integer** |  |  |
| **description** | **String** |  | [optional] |
| **version** | **Integer** |  |  |
| **environment_id** | **String** |  |  |
| **environment_name** | **String** |  |  |
| **features** | [**Array&lt;FeatureGroupFeature&gt;**](FeatureGroupFeature.md) |  |  |
| **strategies** | [**Array&lt;FeatureGroupStrategy&gt;**](FeatureGroupStrategy.md) | We only honour the first one | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroup.new(
  id: null,
  name: null,
  order: null,
  description: null,
  version: null,
  environment_id: null,
  environment_name: null,
  features: null,
  strategies: null
)
```

