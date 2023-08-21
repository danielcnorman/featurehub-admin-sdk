# FeaturehubAdminSdk::WebhookSummaryItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | event id as stored in the database (not webhook cloudevent id) |  |
| **type** | **String** | webhook type, empty if the filter is specified as it is just repeated data | [optional] |
| **method** | **String** | POST, PUT, etc |  |
| **when_sent** | **Time** | When the hook was posted |  |
| **status** | **Integer** | HTTP status code |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::WebhookSummaryItem.new(
  id: null,
  type: null,
  method: null,
  when_sent: null,
  status: null
)
```

