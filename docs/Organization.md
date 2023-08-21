# FeaturehubAdminSdk::Organization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **updated_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **when_created** | **Time** |  | [optional] |
| **when_updated** | **Time** |  | [optional] |
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

instance = FeaturehubAdminSdk::Organization.new(
  created_by: null,
  updated_by: null,
  when_created: null,
  when_updated: null,
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

