# FeaturehubAdminSdk::RolloutStrategyInstance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | This is copied from the shared rollout strategy on return, it is read only from the client perspective | [optional] |
| **strategy_id** | **String** |  | [optional] |
| **value** | **Object** | the value for this rollout strategy for this feature value | [optional] |
| **disabled** | **Boolean** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyInstance.new(
  name: null,
  strategy_id: null,
  value: null,
  disabled: null
)
```

