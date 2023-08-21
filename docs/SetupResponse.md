# FeaturehubAdminSdk::SetupResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | [**Organization**](Organization.md) |  | [optional] |
| **providers** | **Array&lt;String&gt;** |  | [optional] |
| **provider_info** | [**Hash&lt;String, IdentityProviderInfo&gt;**](IdentityProviderInfo.md) |  | [optional] |
| **capability_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **redirect_url** | **String** | Set if there is only one external provider and no local. Allows immediate redirect to provider. It assumes it will be used immediate (e.g. state in oauth2 url) | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::SetupResponse.new(
  organization: null,
  providers: null,
  provider_info: null,
  capability_info: null,
  redirect_url: null
)
```

