# FeaturehubAdminSdk::FeatureHistoryServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_feature_history**](FeatureHistoryServiceApi.md#list_feature_history) | **GET** /mr-api/application/{appId}/feature-history |  |


## list_feature_history

> <FeatureHistoryList> list_feature_history(app_id, opts)



Gets a paginated list of history of feature value changes

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureHistoryServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  feature_keys: ['inner_example'], # Array<String> | Allows you to search by keys. If featureIds are provided, keys are ignored
  feature_ids: ['inner_example'], # Array<String> | The ids of the features you want, prefer this over keys as keys can change
  versions: [3.56], # Array<Integer> | If only one feature is requested, you can specify the specific versions you want
  environment_ids: ['inner_example'], # Array<String> | Any environments you want the feature keys/ids from
  max: 56, # Integer | This is the max to result, limited by server
  start_at: 56 # Integer | what position in the results to start at
}

begin
  
  result = api_instance.list_feature_history(app_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureHistoryServiceApi->list_feature_history: #{e}"
end
```

#### Using the list_feature_history_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureHistoryList>, Integer, Hash)> list_feature_history_with_http_info(app_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_feature_history_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureHistoryList>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureHistoryServiceApi->list_feature_history_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **feature_keys** | [**Array&lt;String&gt;**](String.md) | Allows you to search by keys. If featureIds are provided, keys are ignored | [optional] |
| **feature_ids** | [**Array&lt;String&gt;**](String.md) | The ids of the features you want, prefer this over keys as keys can change | [optional] |
| **versions** | [**Array&lt;Integer&gt;**](Integer.md) | If only one feature is requested, you can specify the specific versions you want | [optional] |
| **environment_ids** | [**Array&lt;String&gt;**](String.md) | Any environments you want the feature keys/ids from | [optional] |
| **max** | **Integer** | This is the max to result, limited by server | [optional] |
| **start_at** | **Integer** | what position in the results to start at | [optional] |

### Return type

[**FeatureHistoryList**](FeatureHistoryList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

