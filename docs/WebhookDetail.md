# FeaturehubAdminSdk::WebhookDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **when_sent** | **Time** |  | [optional] |
| **status** | **Integer** | The status of the webhook call |  |
| **method** | **String** |  |  |
| **source_system** | **String** |  | [optional] |
| **delivered_data_cloud_event_type** | **String** |  | [optional] |
| **cloud_event_type** | **String** |  |  |
| **content** | **String** |  | [optional] |
| **url** | **String** | The URL requested, only if Admin | [optional] |
| **outbound_headers** | **Hash&lt;String, String&gt;** | The headers we set on the outbound call, only if Admin | [optional] |
| **incoming_headers** | **Hash&lt;String, String&gt;** | The headers that came back, only if Admin | [optional] |
| **result** | **String** | The body as a string if any, truncated to 1k | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::WebhookDetail.new(
  when_sent: null,
  status: null,
  method: null,
  source_system: null,
  delivered_data_cloud_event_type: null,
  cloud_event_type: null,
  content: null,
  url: null,
  outbound_headers: null,
  incoming_headers: null,
  result: null
)
```

