# FeaturehubAdminSdk::FeatureGroupCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | allow changing the name |  |
| **description** | **String** |  | [optional] |
| **environment_id** | **String** | allow swapping the environment |  |
| **features** | [**Array&lt;FeatureGroupUpdateFeature&gt;**](FeatureGroupUpdateFeature.md) | allow updating the features |  |
| **strategies** | [**Array&lt;FeatureGroupStrategy&gt;**](FeatureGroupStrategy.md) | We only honour the first one | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroupCreate.new(
  name: null,
  description: null,
  environment_id: null,
  features: null,
  strategies: null
)
```

