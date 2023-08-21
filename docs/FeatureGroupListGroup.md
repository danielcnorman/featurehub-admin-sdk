# FeaturehubAdminSdk::FeatureGroupListGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **order** | **Integer** |  |  |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **environment_name** | **String** |  |  |
| **environment_id** | **String** |  |  |
| **version** | **Integer** |  |  |
| **has_strategy** | **Boolean** |  |  |
| **features** | [**Array&lt;FeatureGroupListFeature&gt;**](FeatureGroupListFeature.md) |  |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroupListGroup.new(
  id: null,
  order: null,
  name: null,
  description: null,
  environment_name: null,
  environment_id: null,
  version: null,
  has_strategy: null,
  features: null
)
```

