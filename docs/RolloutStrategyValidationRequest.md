# FeaturehubAdminSdk::RolloutStrategyValidationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_strategies** | [**Array&lt;RolloutStrategy&gt;**](RolloutStrategy.md) |  | [optional] |
| **shared_strategies** | [**Array&lt;RolloutStrategyInstance&gt;**](RolloutStrategyInstance.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyValidationRequest.new(
  custom_strategies: null,
  shared_strategies: null
)
```

