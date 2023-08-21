# FeaturehubAdminSdk::CacheRefreshResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applications_refreshed** | **Integer** |  | [optional] |
| **portfolios_refreshed** | **Integer** |  | [optional] |
| **environments_refreshed** | **Integer** |  | [optional] |
| **service_accounts_refreshed** | **Integer** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::CacheRefreshResponse.new(
  applications_refreshed: null,
  portfolios_refreshed: null,
  environments_refreshed: null,
  service_accounts_refreshed: null
)
```

