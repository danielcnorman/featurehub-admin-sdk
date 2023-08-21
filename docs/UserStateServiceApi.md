# FeaturehubAdminSdk::UserStateServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_hidden_environments**](UserStateServiceApi.md#get_hidden_environments) | **GET** /mr-api/user-data/state/{appId}/hidden-environments |  |
| [**save_hidden_environments**](UserStateServiceApi.md#save_hidden_environments) | **POST** /mr-api/user-data/state/{appId}/hidden-environments |  |


## get_hidden_environments

> <HiddenEnvironments> get_hidden_environments(app_id)



Gets information on which environments are hidden for this user

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::UserStateServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.get_hidden_environments(app_id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling UserStateServiceApi->get_hidden_environments: #{e}"
end
```

#### Using the get_hidden_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HiddenEnvironments>, Integer, Hash)> get_hidden_environments_with_http_info(app_id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_hidden_environments_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HiddenEnvironments>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling UserStateServiceApi->get_hidden_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |

### Return type

[**HiddenEnvironments**](HiddenEnvironments.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_hidden_environments

> <HiddenEnvironments> save_hidden_environments(app_id, hidden_environments)



Saves information on which environments should be hidden for this user

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::UserStateServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
hidden_environments = FeaturehubAdminSdk::HiddenEnvironments.new # HiddenEnvironments | 

begin
  
  result = api_instance.save_hidden_environments(app_id, hidden_environments)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling UserStateServiceApi->save_hidden_environments: #{e}"
end
```

#### Using the save_hidden_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<HiddenEnvironments>, Integer, Hash)> save_hidden_environments_with_http_info(app_id, hidden_environments)

```ruby
begin
  
  data, status_code, headers = api_instance.save_hidden_environments_with_http_info(app_id, hidden_environments)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <HiddenEnvironments>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling UserStateServiceApi->save_hidden_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** |  |  |
| **hidden_environments** | [**HiddenEnvironments**](HiddenEnvironments.md) |  |  |

### Return type

[**HiddenEnvironments**](HiddenEnvironments.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

