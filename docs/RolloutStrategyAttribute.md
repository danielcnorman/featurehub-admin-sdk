# FeaturehubAdminSdk::RolloutStrategyAttribute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **conditional** | [**RolloutStrategyAttributeConditional**](RolloutStrategyAttributeConditional.md) |  | [optional] |
| **field_name** | **String** |  | [optional] |
| **values** | **Array&lt;Object&gt;** | the value(s) associated with this rule | [optional] |
| **type** | [**RolloutStrategyFieldType**](RolloutStrategyFieldType.md) |  | [optional] |
| **id** | **String** | A temporary id used only when validating. Saving strips these out as they are not otherwise necessary | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::RolloutStrategyAttribute.new(
  conditional: null,
  field_name: null,
  values: null,
  type: null,
  id: null
)
```

