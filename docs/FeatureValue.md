# FeaturehubAdminSdk::FeatureValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **key** | **String** |  |  |
| **locked** | **Boolean** |  |  |
| **value_string** | **String** | default value if no strategy matches. interpreted by type in parent | [optional] |
| **value_number** | **Float** |  | [optional] |
| **value_boolean** | **Boolean** |  | [optional] |
| **value_json** | **String** |  | [optional] |
| **retired** | **Boolean** | if false or null, this feature will visible on edge. if true, it will not be passed to the client | [optional] |
| **rollout_strategy_instances** | [**Array&lt;RolloutStrategyInstance&gt;**](RolloutStrategyInstance.md) |  | [optional] |
| **rollout_strategies** | [**Array&lt;RolloutStrategy&gt;**](RolloutStrategy.md) | These are custom rollout strategies that only apply to this feature value. | [optional] |
| **shared_rollout_strategies** | [**Array&lt;RolloutStrategy&gt;**](RolloutStrategy.md) | This is list is either provided empty (when publishing) or anemic so the MR will client will understand which shared strategies are attached without having to back-call. If provided then it will mirror rolloutStrategyInstances and only enabled ones will be passed back. The value from the rolloutStrategyInstance will be embedded. This field will _always_ be ignored when being sent back to the server, only rolloutStrategyInstances is used. | [optional] |
| **feature_group_strategies** | [**Array&lt;FeatureGroupFeatureValueStrategy&gt;**](FeatureGroupFeatureValueStrategy.md) | There are strategies provided by feature groups (if any) | [optional] |
| **environment_id** | **String** |  | [optional] |
| **version** | **Integer** | used for optimistic locking | [optional] |
| **who_updated** | [**Person**](Person.md) |  | [optional] |
| **when_updated** | **Time** |  | [optional] |
| **what_updated** | **String** |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::FeatureValue.new(
  id: null,
  key: null,
  locked: null,
  value_string: null,
  value_number: null,
  value_boolean: null,
  value_json: null,
  retired: null,
  rollout_strategy_instances: null,
  rollout_strategies: null,
  shared_rollout_strategies: null,
  feature_group_strategies: null,
  environment_id: null,
  version: null,
  who_updated: null,
  when_updated: null,
  what_updated: null
)
```

