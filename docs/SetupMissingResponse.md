# FeaturehubAdminSdk::SetupMissingResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **providers** | **Array&lt;String&gt;** |  | [optional] |
| **capability_info** | **Hash&lt;String, String&gt;** |  | [optional] |
| **provider_info** | [**Hash&lt;String, IdentityProviderInfo&gt;**](IdentityProviderInfo.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::SetupMissingResponse.new(
  providers: null,
  capability_info: null,
  provider_info: null
)
```

