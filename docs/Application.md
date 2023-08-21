# FeaturehubAdminSdk::Application

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
| **portfolio_id** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **features** | [**Array&lt;Feature&gt;**](Feature.md) |  | [optional] |
| **environments** | [**Array&lt;Environment&gt;**](Environment.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::Application.new(
  created_by: null,
  updated_by: null,
  when_created: null,
  when_updated: null,
  id: null,
  name: null,
  description: null,
  portfolio_id: null,
  version: null,
  groups: null,
  features: null,
  environments: null,
  when_archived: null
)
```

