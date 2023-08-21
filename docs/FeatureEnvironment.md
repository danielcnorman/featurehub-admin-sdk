# FeaturehubAdminSdk::FeatureEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **environment** | [**Environment**](Environment.md) |  | [optional] |
| **roles** | [**Array&lt;RoleType&gt;**](RoleType.md) | the roles of this person in this environment | [optional] |
| **feature_value** | [**FeatureValue**](FeatureValue.md) |  | [optional] |
| **service_accounts** | [**Array&lt;ServiceAccount&gt;**](ServiceAccount.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureEnvironment.new(
  environment: null,
  roles: null,
  feature_value: null,
  service_accounts: null
)
```

