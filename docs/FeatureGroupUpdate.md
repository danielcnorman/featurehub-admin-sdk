# FeaturehubAdminSdk::FeatureGroupUpdate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | allow changing the name | [optional] |
| **description** | **String** |  | [optional] |
| **environment_id** | **String** | allow swapping the environment | [optional] |
| **features** | [**Array&lt;FeatureGroupUpdateFeature&gt;**](FeatureGroupUpdateFeature.md) | allow updating the features | [optional] |
| **strategies** | [**Array&lt;FeatureGroupStrategy&gt;**](FeatureGroupStrategy.md) | We only honour the first one | [optional] |
| **version** | **Integer** |  |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroupUpdate.new(
  name: null,
  description: null,
  environment_id: null,
  features: null,
  strategies: null,
  version: null
)
```

