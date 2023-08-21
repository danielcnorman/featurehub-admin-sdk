# FeaturehubAdminSdk::WebhookTypeDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_type** | **String** | The cloud event message type  |  |
| **description** | **String** | What this cloud event is for |  |
| **env_prefix** | **String** | the prefix to apply in the environmentInfo field to extract the enabled/headers/url data |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::WebhookTypeDetail.new(
  message_type: null,
  description: null,
  env_prefix: null
)
```

