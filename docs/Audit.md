# FeaturehubAdminSdk::Audit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **updated_by** | [**AuditCreatedBy**](AuditCreatedBy.md) |  | [optional] |
| **when_created** | **Time** |  | [optional] |
| **when_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::Audit.new(
  created_by: null,
  updated_by: null,
  when_created: null,
  when_updated: null
)
```

