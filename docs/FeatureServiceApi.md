# FeaturehubAdminSdk::FeatureServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_features_for_application**](FeatureServiceApi.md#create_features_for_application) | **POST** /mr-api/application/{id}/features |  |
| [**delete_feature_for_application**](FeatureServiceApi.md#delete_feature_for_application) | **DELETE** /mr-api/application/{id}/features/{key} |  |
| [**find_all_feature_and_feature_values_for_environments_by_application**](FeatureServiceApi.md#find_all_feature_and_feature_values_for_environments_by_application) | **GET** /mr-api/application/{id}/all-feature-environment |  |
| [**get_all_feature_values_by_application_for_key**](FeatureServiceApi.md#get_all_feature_values_by_application_for_key) | **GET** /mr-api/application/{id}/feature-environments/{key} |  |
| [**get_all_features_for_application**](FeatureServiceApi.md#get_all_features_for_application) | **GET** /mr-api/application/{id}/features |  |
| [**get_feature_by_key**](FeatureServiceApi.md#get_feature_by_key) | **GET** /mr-api/application/{id}/features/{key} |  |
| [**update_all_feature_values_by_application_for_key**](FeatureServiceApi.md#update_all_feature_values_by_application_for_key) | **PUT** /mr-api/application/{id}/feature-environments/{key} |  |
| [**update_feature_for_application**](FeatureServiceApi.md#update_feature_for_application) | **PUT** /mr-api/application/{id}/features/{key} |  |


## create_features_for_application

> <Array<Feature>> create_features_for_application(id, feature, opts)



add a new feature to this application, returns all features.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
feature = FeaturehubAdminSdk::Feature.new({name: 'name_example'}) # Feature | 
opts = {
  include_meta_data: true # Boolean | Include the metadata in the returned feature objects. Can be large.
}

begin
  
  result = api_instance.create_features_for_application(id, feature, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->create_features_for_application: #{e}"
end
```

#### Using the create_features_for_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Feature>>, Integer, Hash)> create_features_for_application_with_http_info(id, feature, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_features_for_application_with_http_info(id, feature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Feature>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->create_features_for_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **feature** | [**Feature**](Feature.md) |  |  |
| **include_meta_data** | **Boolean** | Include the metadata in the returned feature objects. Can be large. | [optional] |

### Return type

[**Array&lt;Feature&gt;**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_feature_for_application

> <Array<Feature>> delete_feature_for_application(id, key, opts)



updates all named features in this application, returns all features.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
key = 'key_example' # String | The named unique key of the associated feature
opts = {
  include_meta_data: true # Boolean | Include the metadata in the returned feature objects. Can be large.
}

begin
  
  result = api_instance.delete_feature_for_application(id, key, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->delete_feature_for_application: #{e}"
end
```

#### Using the delete_feature_for_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Feature>>, Integer, Hash)> delete_feature_for_application_with_http_info(id, key, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_feature_for_application_with_http_info(id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Feature>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->delete_feature_for_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **key** | **String** | The named unique key of the associated feature |  |
| **include_meta_data** | **Boolean** | Include the metadata in the returned feature objects. Can be large. | [optional] |

### Return type

[**Array&lt;Feature&gt;**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_all_feature_and_feature_values_for_environments_by_application

> <ApplicationFeatureValues> find_all_feature_and_feature_values_for_environments_by_application(id, opts)



Get a list of all environments and features and their values that this user has access to

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  filter: 'filter_example', # String | A filter to apply to the features - partial match of key or description
  max: 56, # Integer | The maximum number of features to get for this page
  page: 56, # Integer | The page number of the results. 0 indexed.
  feature_types: [FeaturehubAdminSdk::FeatureValueType::BOOLEAN], # Array<FeatureValueType> | 
  sort_order: FeaturehubAdminSdk::SortOrder::ASC # SortOrder | 
}

begin
  
  result = api_instance.find_all_feature_and_feature_values_for_environments_by_application(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->find_all_feature_and_feature_values_for_environments_by_application: #{e}"
end
```

#### Using the find_all_feature_and_feature_values_for_environments_by_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationFeatureValues>, Integer, Hash)> find_all_feature_and_feature_values_for_environments_by_application_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_all_feature_and_feature_values_for_environments_by_application_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationFeatureValues>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->find_all_feature_and_feature_values_for_environments_by_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **filter** | **String** | A filter to apply to the features - partial match of key or description | [optional] |
| **max** | **Integer** | The maximum number of features to get for this page | [optional] |
| **page** | **Integer** | The page number of the results. 0 indexed. | [optional] |
| **feature_types** | [**Array&lt;FeatureValueType&gt;**](FeatureValueType.md) |  | [optional] |
| **sort_order** | [**SortOrder**](.md) |  | [optional] |

### Return type

[**ApplicationFeatureValues**](ApplicationFeatureValues.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_feature_values_by_application_for_key

> <Array<FeatureEnvironment>> get_all_feature_values_by_application_for_key(id, key)



Get a list of all environments and features and their values that this user has access to

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
key = 'key_example' # String | The key of the associated feature

begin
  
  result = api_instance.get_all_feature_values_by_application_for_key(id, key)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_all_feature_values_by_application_for_key: #{e}"
end
```

#### Using the get_all_feature_values_by_application_for_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FeatureEnvironment>>, Integer, Hash)> get_all_feature_values_by_application_for_key_with_http_info(id, key)

```ruby
begin
  
  data, status_code, headers = api_instance.get_all_feature_values_by_application_for_key_with_http_info(id, key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FeatureEnvironment>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_all_feature_values_by_application_for_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **key** | **String** | The key of the associated feature |  |

### Return type

[**Array&lt;FeatureEnvironment&gt;**](FeatureEnvironment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_features_for_application

> <Array<Feature>> get_all_features_for_application(id, opts)



get all features available in this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  include_meta_data: true # Boolean | Include the metadata in the returned feature objects. Can be large.
}

begin
  
  result = api_instance.get_all_features_for_application(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_all_features_for_application: #{e}"
end
```

#### Using the get_all_features_for_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Feature>>, Integer, Hash)> get_all_features_for_application_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_all_features_for_application_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Feature>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_all_features_for_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **include_meta_data** | **Boolean** | Include the metadata in the returned feature objects. Can be large. | [optional] |

### Return type

[**Array&lt;Feature&gt;**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_by_key

> <Feature> get_feature_by_key(id, key, opts)



get an individual feature

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
key = 'key_example' # String | The named unique key of the associated feature
opts = {
  include_meta_data: true # Boolean | Include the metadata in the returned feature objects. Can be large.
}

begin
  
  result = api_instance.get_feature_by_key(id, key, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_feature_by_key: #{e}"
end
```

#### Using the get_feature_by_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Feature>, Integer, Hash)> get_feature_by_key_with_http_info(id, key, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_feature_by_key_with_http_info(id, key, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Feature>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->get_feature_by_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **key** | **String** | The named unique key of the associated feature |  |
| **include_meta_data** | **Boolean** | Include the metadata in the returned feature objects. Can be large. | [optional] |

### Return type

[**Feature**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_all_feature_values_by_application_for_key

> <Array<FeatureEnvironment>> update_all_feature_values_by_application_for_key(id, key, feature_value, opts)



Update a list of all environments and features and their values that this user has access to

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
key = 'key_example' # String | The key of the associated feature
feature_value = [FeaturehubAdminSdk::FeatureValue.new({key: 'key_example', locked: false})] # Array<FeatureValue> | 
opts = {
  remove_values_not_passed: true # Boolean | The id of the application to find
}

begin
  
  result = api_instance.update_all_feature_values_by_application_for_key(id, key, feature_value, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->update_all_feature_values_by_application_for_key: #{e}"
end
```

#### Using the update_all_feature_values_by_application_for_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FeatureEnvironment>>, Integer, Hash)> update_all_feature_values_by_application_for_key_with_http_info(id, key, feature_value, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_all_feature_values_by_application_for_key_with_http_info(id, key, feature_value, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FeatureEnvironment>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->update_all_feature_values_by_application_for_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **key** | **String** | The key of the associated feature |  |
| **feature_value** | [**Array&lt;FeatureValue&gt;**](FeatureValue.md) |  |  |
| **remove_values_not_passed** | **Boolean** | The id of the application to find | [optional] |

### Return type

[**Array&lt;FeatureEnvironment&gt;**](FeatureEnvironment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_feature_for_application

> <Array<Feature>> update_feature_for_application(id, key, feature, opts)



updates all named features in this application, returns all features.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
key = 'key_example' # String | The named unique key of the associated feature
feature = FeaturehubAdminSdk::Feature.new({name: 'name_example'}) # Feature | 
opts = {
  include_meta_data: true # Boolean | Include the metadata in the returned feature objects. Can be large.
}

begin
  
  result = api_instance.update_feature_for_application(id, key, feature, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->update_feature_for_application: #{e}"
end
```

#### Using the update_feature_for_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Feature>>, Integer, Hash)> update_feature_for_application_with_http_info(id, key, feature, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_feature_for_application_with_http_info(id, key, feature, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Feature>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureServiceApi->update_feature_for_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **key** | **String** | The named unique key of the associated feature |  |
| **feature** | [**Feature**](Feature.md) |  |  |
| **include_meta_data** | **Boolean** | Include the metadata in the returned feature objects. Can be large. | [optional] |

### Return type

[**Array&lt;Feature&gt;**](Feature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

