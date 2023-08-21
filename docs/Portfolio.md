# FeaturehubAdminSdk::Portfolio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **updated_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **when_created** | **Time** |  | [optional] |
| **when_updated** | **Time** |  | [optional] |
| **id** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **organization_id** | **String** |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **applications** | [**Array&lt;Application&gt;**](Application.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::Portfolio.new(
  created_by: null,
  updated_by: null,
  when_created: null,
  when_updated: null,
  id: null,
  name: null,
  description: null,
  version: null,
  organization_id: null,
  groups: null,
  applications: null,
  when_archived: null
)
```

