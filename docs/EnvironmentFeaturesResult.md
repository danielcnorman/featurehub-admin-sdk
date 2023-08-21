# FeaturehubAdminSdk::EnvironmentFeaturesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **feature_values** | [**Array&lt;FeatureValue&gt;**](FeatureValue.md) |  | [optional] |
| **environments** | [**Array&lt;Environment&gt;**](Environment.md) |  | [optional] |
| **applications** | [**Array&lt;Application&gt;**](Application.md) |  | [optional] |
| **features** | [**Array&lt;Feature&gt;**](Feature.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::EnvironmentFeaturesResult.new(
  feature_values: null,
  environments: null,
  applications: null,
  features: null
)
```

