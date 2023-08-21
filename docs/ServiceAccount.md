# FeaturehubAdminSdk::ServiceAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **portfolio_id** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **api_key_client_side** | **String** | this is a read only field, it denotes an api key where the eval is done client side | [optional] |
| **api_key_server_side** | **String** | this is a read only field, it denotes an api key where the eval is done server side | [optional] |
| **permissions** | [**Array&lt;ServiceAccountPermission&gt;**](ServiceAccountPermission.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::ServiceAccount.new(
  id: null,
  name: null,
  portfolio_id: null,
  description: null,
  version: null,
  api_key_client_side: null,
  api_key_server_side: null,
  permissions: null,
  when_archived: null
)
```

