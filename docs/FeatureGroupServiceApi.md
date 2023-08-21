# FeaturehubAdminSdk::FeatureGroupServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_feature_group**](FeatureGroupServiceApi.md#create_feature_group) | **POST** /mr-api/application/{appId}/feature-groups |  |
| [**delete_feature_group**](FeatureGroupServiceApi.md#delete_feature_group) | **DELETE** /mr-api/application/{appId}/feature-groups/{fgId} |  |
| [**get_feature_group**](FeatureGroupServiceApi.md#get_feature_group) | **GET** /mr-api/application/{appId}/feature-groups/{fgId} |  |
| [**get_feature_group_features**](FeatureGroupServiceApi.md#get_feature_group_features) | **GET** /mr-api/application/{appId}/feature-groups/environment/{envId} |  |
| [**list_feature_groups**](FeatureGroupServiceApi.md#list_feature_groups) | **GET** /mr-api/application/{appId}/feature-groups |  |
| [**update_feature_group**](FeatureGroupServiceApi.md#update_feature_group) | **PUT** /mr-api/application/{appId}/feature-groups/{fgId} |  |


## create_feature_group

> <FeatureGroupListGroup> create_feature_group(app_id, feature_group_create)



Get feature groups for this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
feature_group_create = FeaturehubAdminSdk::FeatureGroupCreate.new({name: 'name_example', environment_id: 'environment_id_example', features: [FeaturehubAdminSdk::FeatureGroupUpdateFeature.new({id: 'id_example'})]}) # FeatureGroupCreate | 

begin
  
  result = api_instance.create_feature_group(app_id, feature_group_create)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->create_feature_group: #{e}"
end
```

#### Using the create_feature_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureGroupListGroup>, Integer, Hash)> create_feature_group_with_http_info(app_id, feature_group_create)

```ruby
begin
  
  data, status_code, headers = api_instance.create_feature_group_with_http_info(app_id, feature_group_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureGroupListGroup>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->create_feature_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **feature_group_create** | [**FeatureGroupCreate**](FeatureGroupCreate.md) |  |  |

### Return type

[**FeatureGroupListGroup**](FeatureGroupListGroup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_feature_group

> delete_feature_group(app_id, fg_id)



Delete this feature group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application
fg_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the feature group

begin
  
  api_instance.delete_feature_group(app_id, fg_id)
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->delete_feature_group: #{e}"
end
```

#### Using the delete_feature_group_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_feature_group_with_http_info(app_id, fg_id)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_feature_group_with_http_info(app_id, fg_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->delete_feature_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application |  |
| **fg_id** | **String** | The id of the feature group |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_feature_group

> <FeatureGroup> get_feature_group(app_id, fg_id)



Get feature groups for this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application
fg_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the feature group

begin
  
  result = api_instance.get_feature_group(app_id, fg_id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->get_feature_group: #{e}"
end
```

#### Using the get_feature_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureGroup>, Integer, Hash)> get_feature_group_with_http_info(app_id, fg_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_feature_group_with_http_info(app_id, fg_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureGroup>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->get_feature_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application |  |
| **fg_id** | **String** | The id of the feature group |  |

### Return type

[**FeatureGroup**](FeatureGroup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_feature_group_features

> <Array<FeatureGroupFeature>> get_feature_group_features(app_id, env_id)



Get feature groups for this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the feature group

begin
  
  result = api_instance.get_feature_group_features(app_id, env_id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->get_feature_group_features: #{e}"
end
```

#### Using the get_feature_group_features_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FeatureGroupFeature>>, Integer, Hash)> get_feature_group_features_with_http_info(app_id, env_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_feature_group_features_with_http_info(app_id, env_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FeatureGroupFeature>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->get_feature_group_features_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application |  |
| **env_id** | **String** | The id of the feature group |  |

### Return type

[**Array&lt;FeatureGroupFeature&gt;**](FeatureGroupFeature.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_feature_groups

> <FeatureGroupList> list_feature_groups(app_id, opts)



Get feature groups for this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  filter: 'filter_example', # String | A filter to apply to the features - partial match of key or description
  max: 56, # Integer | The maximum number of features to get for this page
  page: 56, # Integer | The page number of the results. 0 indexed.
  sort_order: FeaturehubAdminSdk::SortOrder::ASC, # SortOrder | 
  environment_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Match based on environment id
}

begin
  
  result = api_instance.list_feature_groups(app_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->list_feature_groups: #{e}"
end
```

#### Using the list_feature_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureGroupList>, Integer, Hash)> list_feature_groups_with_http_info(app_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_feature_groups_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureGroupList>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->list_feature_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **filter** | **String** | A filter to apply to the features - partial match of key or description | [optional] |
| **max** | **Integer** | The maximum number of features to get for this page | [optional] |
| **page** | **Integer** | The page number of the results. 0 indexed. | [optional] |
| **sort_order** | [**SortOrder**](.md) |  | [optional] |
| **environment_id** | **String** | Match based on environment id | [optional] |

### Return type

[**FeatureGroupList**](FeatureGroupList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_feature_group

> <FeatureGroup> update_feature_group(app_id, fg_id, feature_group_update)



Get feature groups for this application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::FeatureGroupServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application
fg_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the feature group
feature_group_update = FeaturehubAdminSdk::FeatureGroupUpdate.new({version: 3.56}) # FeatureGroupUpdate | 

begin
  
  result = api_instance.update_feature_group(app_id, fg_id, feature_group_update)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->update_feature_group: #{e}"
end
```

#### Using the update_feature_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeatureGroup>, Integer, Hash)> update_feature_group_with_http_info(app_id, fg_id, feature_group_update)

```ruby
begin
  
  data, status_code, headers = api_instance.update_feature_group_with_http_info(app_id, fg_id, feature_group_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeatureGroup>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling FeatureGroupServiceApi->update_feature_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application |  |
| **fg_id** | **String** | The id of the feature group |  |
| **feature_group_update** | [**FeatureGroupUpdate**](FeatureGroupUpdate.md) |  |  |

### Return type

[**FeatureGroup**](FeatureGroup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

