# FeaturehubAdminSdk::EnvironmentAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **application_id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **prior_environment_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **description** | **String** |  | [optional] |
| **production** | **Boolean** | is this a production environment? | [optional] |
| **group_roles** | [**Array&lt;EnvironmentGroupRole&gt;**](EnvironmentGroupRole.md) |  | [optional] |
| **features** | [**Array&lt;Feature&gt;**](Feature.md) |  | [optional] |
| **environment_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **service_account_permission** | [**Array&lt;ServiceAccountPermission&gt;**](ServiceAccountPermission.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::EnvironmentAllOf.new(
  id: null,
  application_id: null,
  name: null,
  prior_environment_id: null,
  version: null,
  description: null,
  production: null,
  group_roles: null,
  features: null,
  environment_info: null,
  service_account_permission: null,
  when_archived: null
)
```

