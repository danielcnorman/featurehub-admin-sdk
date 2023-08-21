# FeaturehubAdminSdk::RolloutStrategyInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **rollout_strategy** | [**RolloutStrategy**](RolloutStrategy.md) |  |  |
| **when_archived** | **Time** |  | [optional] |
| **changed_by** | [**Person**](Person.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyInfo.new(
  rollout_strategy: null,
  when_archived: null,
  changed_by: null
)
```

