# FeaturehubAdminSdk::OrganizationAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **name** | **String** |  |  |
| **admin** | **Boolean** |  | [optional] |
| **authorization_url** | **String** | If provided, the browser should redirect to this URL to authenticate | [optional] |
| **org_group** | [**Group**](Group.md) |  | [optional] |
| **portfolios** | [**Array&lt;Portfolio&gt;**](Portfolio.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::OrganizationAllOf.new(
  id: null,
  version: null,
  name: null,
  admin: null,
  authorization_url: null,
  org_group: null,
  portfolios: null,
  when_archived: null
)
```

