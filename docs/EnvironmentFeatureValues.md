# FeaturehubAdminSdk::EnvironmentFeatureValues

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment_id** | **String** |  | [optional] |
| **environment_name** | **String** |  | [optional] |
| **prior_environment_id** | **String** |  | [optional] |
| **features** | [**Array&lt;FeatureValue&gt;**](FeatureValue.md) | the values of the features depending on access | [optional] |
| **roles** | [**Array&lt;RoleType&gt;**](RoleType.md) | the roles of this person in this environment | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::EnvironmentFeatureValues.new(
  environment_id: null,
  environment_name: null,
  prior_environment_id: null,
  features: null,
  roles: null
)
```

