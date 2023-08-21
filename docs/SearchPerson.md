# FeaturehubAdminSdk::SearchPerson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **email** | **String** |  |  |
| **version** | **Integer** |  |  |
| **person_type** | [**PersonType**](PersonType.md) |  | [default to &#39;person&#39;] |
| **when_last_authenticated** | **Time** | This is the timestamp in UTC when they last logged into the system | [optional] |
| **when_last_seen** | **Time** | This is the timestamp in UTC when they last made a request to the system on their most recent login. If it is null it means they have no current token or have never logged in. | [optional] |
| **when_deactivated** | **Time** | When a person&#39;s account was deactivated (if it was) and when | [optional] |
| **group_count** | **Integer** |  |  |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::SearchPerson.new(
  id: null,
  name: null,
  email: null,
  version: null,
  person_type: null,
  when_last_authenticated: null,
  when_last_seen: null,
  when_deactivated: null,
  group_count: null
)
```

