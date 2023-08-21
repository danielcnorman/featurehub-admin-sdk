# FeaturehubAdminSdk::UpdatePerson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **version** | **Integer** | This keeps track of which person version we are updating in case the user tries to update an old record |  |
| **groups** | **Array&lt;String&gt;** |  | [optional] |
| **unarchive** | **Boolean** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::UpdatePerson.new(
  name: null,
  email: null,
  version: null,
  groups: null,
  unarchive: null
)
```

