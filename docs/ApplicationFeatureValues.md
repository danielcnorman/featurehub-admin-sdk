# FeaturehubAdminSdk::ApplicationFeatureValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** |  |  |
| **features** | [**Array&lt;Feature&gt;**](Feature.md) |  |  |
| **environments** | [**Array&lt;EnvironmentFeatureValues&gt;**](EnvironmentFeatureValues.md) |  |  |
| **max_features** | **Integer** |  |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::ApplicationFeatureValues.new(
  application_id: null,
  features: null,
  environments: null,
  max_features: null
)
```

