# FeaturehubAdminSdk::Person

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**PersonId**](PersonId.md) |  | [optional] |
| **name** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **person_type** | [**PersonType**](PersonType.md) |  | [optional][default to &#39;person&#39;] |
| **other** | **String** |  | [optional] |
| **source** | **String** |  | [optional] |
| **version** | **Integer** |  | [optional] |
| **password_requires_reset** | **Boolean** |  | [optional] |
| **groups** | [**Array&lt;Group&gt;**](Group.md) |  | [optional] |
| **when_archived** | **Time** |  | [optional] |
| **when_last_authenticated** | **Time** | This is the timestamp in UTC when they last logged into the system | [optional] |
| **when_last_seen** | **Time** | This is the timestamp in UTC when they last made a request to the system on their most recent login. If it is null it means they have no current token or have never logged in. | [optional] |
| **additional** | [**Array&lt;PersonInfo&gt;**](PersonInfo.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::Person.new(
  id: null,
  name: null,
  email: null,
  person_type: null,
  other: null,
  source: null,
  version: null,
  password_requires_reset: null,
  groups: null,
  when_archived: null,
  when_last_authenticated: null,
  when_last_seen: null,
  additional: null
)
```

