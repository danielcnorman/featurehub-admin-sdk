# FeaturehubAdminSdk::SearchPersonResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **max** | **Integer** |  |  |
| **people** | [**Array&lt;Person&gt;**](Person.md) | This is for backwards compatibility | [optional] |
| **summarised_people** | [**Array&lt;SearchPerson&gt;**](SearchPerson.md) | If we return the new result type, we are returning a summarised person for less data | [optional] |
| **outstanding_registrations** | [**Array&lt;OutstandingRegistration&gt;**](OutstandingRegistration.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::SearchPersonResult.new(
  max: null,
  people: null,
  summarised_people: null,
  outstanding_registrations: null
)
```

