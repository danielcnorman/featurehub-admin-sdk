# FeaturehubAdminSdk::RolloutStrategyValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **custom_stategy_violations** | [**Array&lt;CustomRolloutStrategyViolation&gt;**](CustomRolloutStrategyViolation.md) |  | [optional] |
| **shared_strategy_violations** | [**Array&lt;SharedRolloutStrategyViolation&gt;**](SharedRolloutStrategyViolation.md) |  | [optional] |
| **violations** | [**Array&lt;RolloutStrategyCollectionViolationType&gt;**](RolloutStrategyCollectionViolationType.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyValidationResponse.new(
  custom_stategy_violations: null,
  shared_strategy_violations: null,
  violations: null
)
```

