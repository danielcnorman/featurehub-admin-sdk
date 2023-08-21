# FeaturehubAdminSdk::ApplicationSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **groups_have_permission** | **Boolean** |  |  |
| **service_accounts_have_permission** | **Boolean** |  |  |
| **feature_count** | **Integer** |  |  |
| **environment_count** | **Integer** |  |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::ApplicationSummary.new(
  groups_have_permission: null,
  service_accounts_have_permission: null,
  feature_count: null,
  environment_count: null
)
```

