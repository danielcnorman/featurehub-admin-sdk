# FeaturehubAdminSdk::WebhookCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message_type** | **String** |  |  |
| **env_id** | **String** |  |  |
| **config** | **Hash&lt;String, String&gt;** | Any configuration to pass to the check, e.g. webhook.feature.url, headers, etc - this ensures the updates get to the destination and are used. They get merged info the envInfo, replacing anything there |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::WebhookCheck.new(
  message_type: null,
  env_id: null,
  config: null
)
```

