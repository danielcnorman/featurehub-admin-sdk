# FeaturehubAdminSdk::Feature

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **key** | **String** | Unique within this application | [optional] |
| **_alias** | **String** | use this in code, as then people cannot guess your new features from their names | [optional] |
| **link** | **String** |  | [optional] |
| **name** | **String** | description if any |  |
| **value_type** | [**FeatureValueType**](FeatureValueType.md) |  | [optional] |
| **version** | **Integer** | used for optimistic locking when renaming a feature | [optional] |
| **when_archived** | **Time** |  | [optional] |
| **secret** | **Boolean** | should the config remain invisible to users without secret permission | [optional] |
| **description** | **String** |  | [optional] |
| **meta_data** | **String** | Metadata that may need to be stored. Intended for ADK use. No data limit (stored as CLOB) | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::Feature.new(
  id: null,
  key: null,
  _alias: null,
  link: null,
  name: null,
  value_type: null,
  version: null,
  when_archived: null,
  secret: null,
  description: null,
  meta_data: null
)
```

