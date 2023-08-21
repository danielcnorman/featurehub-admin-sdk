# FeaturehubAdminSdk::GroupAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **admin** | **Boolean** | is this an admin group? | [optional] |
| **portfolio_id** | **String** |  | [optional] |
| **organization_id** | **String** | this will be the organisation this group belongs to at the top level, or if a portfolio group, the organisation of the portfolio | [optional] |
| **version** | **Integer** |  | [optional] |
| **name** | **String** |  |  |
| **members** | [**Array&lt;Person&gt;**](Person.md) |  | [optional] |
| **application_roles** | [**Array&lt;ApplicationGroupRole&gt;**](ApplicationGroupRole.md) |  | [optional] |
| **environment_roles** | [**Array&lt;EnvironmentGroupRole&gt;**](EnvironmentGroupRole.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::GroupAllOf.new(
  id: null,
  admin: null,
  portfolio_id: null,
  organization_id: null,
  version: null,
  name: null,
  members: null,
  application_roles: null,
  environment_roles: null,
  when_archived: null
)
```

