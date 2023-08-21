# FeaturehubAdminSdk::RolloutStrategyAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | names are unique in a case insensitive fashion |  |
| **colouring** | **Integer** | the colour used to display the strategy in the UI. indexed table of background/foreground combos. | [optional] |
| **avatar** | **String** | url to avatar (if any). Not sent to SDK. Preferably a unicorn. | [optional] |
| **attributes** | [**Array&lt;RolloutStrategyAttribute&gt;**](RolloutStrategyAttribute.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyAllOf.new(
  name: null,
  colouring: null,
  avatar: null,
  attributes: null
)
```

