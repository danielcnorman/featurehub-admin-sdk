# FeaturehubAdminSdk::TokenizedPerson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_token** | **String** |  | [optional] |
| **refresh_token** | **String** |  | [optional] |
| **redirect_url** | **String** |  | [optional] |
| **person** | [**Person**](Person.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::TokenizedPerson.new(
  access_token: null,
  refresh_token: null,
  redirect_url: null,
  person: null
)
```

