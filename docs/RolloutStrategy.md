# FeaturehubAdminSdk::RolloutStrategy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **percentage** | **Integer** | value between 0 and 1000000 - for four decimal places | [optional] |
| **percentage_attributes** | **Array&lt;String&gt;** | if you don&#39;t wish to apply percentage based on user id, you can use one or more attributes defined here | [optional] |
| **value** | **Object** | when we attach the RolloutStrategy for Dacha or SSE this lets us push the value out. Only visible in SDK and SSE Edge. | [optional] |
| **attributes** | [**Array&lt;RolloutStrategyAttribute&gt;**](RolloutStrategyAttribute.md) |  | [optional] |
| **name** | **String** | names are unique in a case insensitive fashion |  |
| **colouring** | **Integer** | the colour used to display the strategy in the UI. indexed table of background/foreground combos. | [optional] |
| **avatar** | **String** | url to avatar (if any). Not sent to SDK. Preferably a unicorn. | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategy.new(
  id: null,
  percentage: null,
  percentage_attributes: null,
  value: null,
  attributes: null,
  name: null,
  colouring: null,
  avatar: null
)
```

