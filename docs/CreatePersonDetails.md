# FeaturehubAdminSdk::CreatePersonDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** |  | [optional] |
| **person_type** | [**PersonType**](PersonType.md) |  | [optional][default to &#39;person&#39;] |
| **name** | **String** |  | [optional] |
| **group_ids** | **Array&lt;String&gt;** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::CreatePersonDetails.new(
  email: null,
  person_type: null,
  name: null,
  group_ids: null
)
```

