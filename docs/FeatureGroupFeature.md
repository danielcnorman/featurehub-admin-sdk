# FeaturehubAdminSdk::FeatureGroupFeature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **key** | **String** |  |  |
| **value** | **Object** | value (if any) associated with this feature | [optional] |
| **type** | [**FeatureValueType**](FeatureValueType.md) |  | [optional] |
| **locked** | **Boolean** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroupFeature.new(
  id: null,
  key: null,
  value: null,
  type: null,
  locked: null
)
```

