# FeaturehubAdminSdk::ApplicationAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
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

instance = FeaturehubAdminSdk::ApplicationAllOf.new(
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

