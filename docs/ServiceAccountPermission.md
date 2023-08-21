# FeaturehubAdminSdk::ServiceAccountPermission

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **permissions** | [**Array&lt;RoleType&gt;**](RoleType.md) |  |  |
| **service_account** | [**ServiceAccount**](ServiceAccount.md) |  | [optional] |
| **environment_id** | **String** |  |  |
| **sdk_url_client_eval** | **String** | Optional if they have chosen includeSdkUrl | [optional] |
| **sdk_url_server_eval** | **String** | Optional if they have chosen includeSdkUrl | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::ServiceAccountPermission.new(
  id: null,
  permissions: null,
  service_account: null,
  environment_id: null,
  sdk_url_client_eval: null,
  sdk_url_server_eval: null
)
```

