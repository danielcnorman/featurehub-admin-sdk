# FeaturehubAdminSdk::FeatureHistoryValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** |  | [optional] |
| **version_from** | **Integer** |  | [optional] |
| **_when** | **Time** | When it was created | [optional] |
| **who** | [**AnemicPerson**](AnemicPerson.md) |  | [optional] |
| **value** | **Object** | the value, no type is passed back | [optional] |
| **locked** | **Boolean** |  | [optional] |
| **retired** | **Boolean** |  | [optional] |
| **rollout_strategies** | [**Array&lt;RolloutStrategy&gt;**](RolloutStrategy.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureHistoryValue.new(
  version: null,
  version_from: null,
  _when: null,
  who: null,
  value: null,
  locked: null,
  retired: null,
  rollout_strategies: null
)
```

