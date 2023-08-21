# FeaturehubAdminSdk::UpdateEnvironment

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** | Version of the record, included for attempting to update out of date records |  |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **production** | **Boolean** | is this a production environment? | [optional] |
| **environment_info** | **Hash&lt;String, String&gt;** | Allows some settings that affect the behaviour of this environment. Currently &#x60;cacheControl&#x60; if set will be passed and set on the responses to GET requests. | [optional] |
| **prior_environment_id** | **String** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::UpdateEnvironment.new(
  version: null,
  name: null,
  description: null,
  production: null,
  environment_info: null,
  prior_environment_id: null
)
```

