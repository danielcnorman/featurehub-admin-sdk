# FeaturehubAdminSdk::CacheRefreshRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **all_the_things** | **Boolean** | refresh the whole cache | [optional] |
| **application_id** | **Array&lt;String&gt;** | if provided these applications will be refreshed | [optional] |
| **portfolio_id** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::CacheRefreshRequest.new(
  all_the_things: null,
  application_id: null,
  portfolio_id: null
)
```

