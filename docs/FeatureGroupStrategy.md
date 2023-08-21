# FeaturehubAdminSdk::FeatureGroupStrategy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The strategy name |  |
| **percentage** | **Integer** | value between 0 and 1000000 - for four decimal places | [optional] |
| **percentage_attributes** | **Array&lt;String&gt;** | if you don&#39;t wish to apply percentage based on user id, you can use one or more attributes defined here | [optional] |
| **attributes** | [**Array&lt;RolloutStrategyAttribute&gt;**](RolloutStrategyAttribute.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureGroupStrategy.new(
  name: null,
  percentage: null,
  percentage_attributes: null,
  attributes: null
)
```

