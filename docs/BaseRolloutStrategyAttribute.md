# FeaturehubAdminSdk::BaseRolloutStrategyAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditional** | [**RolloutStrategyAttributeConditional**](RolloutStrategyAttributeConditional.md) |  | [optional] |
| **field_name** | **String** |  | [optional] |
| **values** | **Array&lt;Object&gt;** | the value(s) associated with this rule | [optional] |
| **type** | [**RolloutStrategyFieldType**](RolloutStrategyFieldType.md) |  | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::BaseRolloutStrategyAttribute.new(
  conditional: null,
  field_name: null,
  values: null,
  type: null
)
```

