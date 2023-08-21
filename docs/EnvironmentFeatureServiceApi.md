# FeaturehubAdminSdk::EnvironmentFeatureServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_feature_for_environment**](EnvironmentFeatureServiceApi.md#create_feature_for_environment) | **POST** /mr-api/features/{eid}/feature/{key} |  |
| [**delete_feature_for_environment**](EnvironmentFeatureServiceApi.md#delete_feature_for_environment) | **DELETE** /mr-api/features/{eid}/feature/{key} |  |
| [**get_feature_for_environment**](EnvironmentFeatureServiceApi.md#get_feature_for_environment) | **GET** /mr-api/features/{eid}/feature/{key} |  |
| [**get_features_for_environment**](EnvironmentFeatureServiceApi.md#get_features_for_environment) | **GET** /mr-api/features/{eid} |  |
| [**update_all_features_for_environment**](EnvironmentFeatureServiceApi.md#update_all_features_for_environment) | **PUT** /mr-api/features/{eid} |  |
| [**update_feature_for_environment**](EnvironmentFeatureServiceApi.md#update_feature_for_environment) | **PUT** /mr-api/features/{eid}/feature/{key} |  |


## create_feature_for_environment

> <FeatureValue> create_feature_for_environment(eid, key, feature_value)



Create a specific feature in this environment.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features
key = 'key_example' # String | The key of the relevant feature
feature_value = FeaturehubAdminSdk::FeatureValue.new({key: 'key_example', locked: false}) # FeatureValue | 

begin
  
  result = api_instance.create_feature_for_environment(eid, key, feature_value)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->create_feature_for_environment: #{e}"
end
```

#### Using the create_feature_for_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureValue>, Integer, Hash)> create_feature_for_environment_with_http_info(eid, key, feature_value)

```ruby
begin
  
  data, status_code, headers = api_instance.create_feature_for_environment_with_http_info(eid, key, feature_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureValue>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->create_feature_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features |  |
| **key** | **String** | The key of the relevant feature |  |
| **feature_value** | [**FeatureValue**](FeatureValue.md) |  |  |

### Return type

[**FeatureValue**](FeatureValue.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_feature_for_environment

> delete_feature_for_environment(eid, key)



No longer supported. Please update to a null value.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features
key = 'key_example' # String | The key of the relevant feature

begin
  
  api_instance.delete_feature_for_environment(eid, key)
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->delete_feature_for_environment: #{e}"
end
```

#### Using the delete_feature_for_environment_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_feature_for_environment_with_http_info(eid, key)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_feature_for_environment_with_http_info(eid, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->delete_feature_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features |  |
| **key** | **String** | The key of the relevant feature |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_feature_for_environment

> <FeatureValue> get_feature_for_environment(eid, key)



Update a specific feature in this environment.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features
key = 'key_example' # String | The key of the relevant feature

begin
  
  result = api_instance.get_feature_for_environment(eid, key)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->get_feature_for_environment: #{e}"
end
```

#### Using the get_feature_for_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureValue>, Integer, Hash)> get_feature_for_environment_with_http_info(eid, key)

```ruby
begin
  
  data, status_code, headers = api_instance.get_feature_for_environment_with_http_info(eid, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureValue>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->get_feature_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features |  |
| **key** | **String** | The key of the relevant feature |  |

### Return type

[**FeatureValue**](FeatureValue.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_features_for_environment

> <EnvironmentFeaturesResult> get_features_for_environment(eid, opts)



Get all features for this environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features or 'latest'
opts = {
  include_features: true, # Boolean | include the features in the result
  filter: 'filter_example' # String | Filter the feature names by this filter.
}

begin
  
  result = api_instance.get_features_for_environment(eid, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->get_features_for_environment: #{e}"
end
```

#### Using the get_features_for_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EnvironmentFeaturesResult>, Integer, Hash)> get_features_for_environment_with_http_info(eid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_features_for_environment_with_http_info(eid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EnvironmentFeaturesResult>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->get_features_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features or &#39;latest&#39; |  |
| **include_features** | **Boolean** | include the features in the result | [optional] |
| **filter** | **String** | Filter the feature names by this filter. | [optional] |

### Return type

[**EnvironmentFeaturesResult**](EnvironmentFeaturesResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_all_features_for_environment

> <Array<FeatureValue>> update_all_features_for_environment(eid, feature_value)



Update all features for this environment that are passed. Ignores any other feature values that are not passed.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features or 'latest'
feature_value = [FeaturehubAdminSdk::FeatureValue.new({key: 'key_example', locked: false})] # Array<FeatureValue> | 

begin
  
  result = api_instance.update_all_features_for_environment(eid, feature_value)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->update_all_features_for_environment: #{e}"
end
```

#### Using the update_all_features_for_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FeatureValue>>, Integer, Hash)> update_all_features_for_environment_with_http_info(eid, feature_value)

```ruby
begin
  
  data, status_code, headers = api_instance.update_all_features_for_environment_with_http_info(eid, feature_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FeatureValue>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->update_all_features_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features or &#39;latest&#39; |  |
| **feature_value** | [**Array&lt;FeatureValue&gt;**](FeatureValue.md) |  |  |

### Return type

[**Array&lt;FeatureValue&gt;**](FeatureValue.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_feature_for_environment

> <FeatureValue> update_feature_for_environment(eid, key, feature_value)



Update a specific feature in this environment.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentFeatureServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find features
key = 'key_example' # String | The key of the relevant feature
feature_value = FeaturehubAdminSdk::FeatureValue.new({key: 'key_example', locked: false}) # FeatureValue | 

begin
  
  result = api_instance.update_feature_for_environment(eid, key, feature_value)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->update_feature_for_environment: #{e}"
end
```

#### Using the update_feature_for_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureValue>, Integer, Hash)> update_feature_for_environment_with_http_info(eid, key, feature_value)

```ruby
begin
  
  data, status_code, headers = api_instance.update_feature_for_environment_with_http_info(eid, key, feature_value)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureValue>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentFeatureServiceApi->update_feature_for_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find features |  |
| **key** | **String** | The key of the relevant feature |  |
| **feature_value** | [**FeatureValue**](FeatureValue.md) |  |  |

### Return type

[**FeatureValue**](FeatureValue.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

