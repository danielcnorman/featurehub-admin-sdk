# FeaturehubAdminSdk::FeatureHistoryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **env_id** | **String** |  | [optional] |
| **feature_value_id** | **String** |  | [optional] |
| **feature_id** | **String** |  | [optional] |
| **history** | [**Array&lt;FeatureHistoryValue&gt;**](FeatureHistoryValue.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureHistoryItem.new(
  env_id: null,
  feature_value_id: null,
  feature_id: null,
  history: null
)
```

