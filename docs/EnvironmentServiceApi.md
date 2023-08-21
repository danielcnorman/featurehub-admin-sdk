# FeaturehubAdminSdk::EnvironmentServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_environment**](EnvironmentServiceApi.md#create_environment) | **POST** /mr-api/application/{id}/environment |  |
| [**delete_environment**](EnvironmentServiceApi.md#delete_environment) | **DELETE** /mr-api/environment/{eid} |  |
| [**environment_ordering**](EnvironmentServiceApi.md#environment_ordering) | **POST** /mr-api/application/{id}/environment-ordering |  |
| [**find_environments**](EnvironmentServiceApi.md#find_environments) | **GET** /mr-api/application/{id}/environment |  |
| [**get_environment**](EnvironmentServiceApi.md#get_environment) | **GET** /mr-api/environment/{eid} |  |
| [**update_environment**](EnvironmentServiceApi.md#update_environment) | **PUT** /mr-api/environment/{eid} |  |


## create_environment

> <Environment> create_environment(id, environment)



Create a new environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
environment = FeaturehubAdminSdk::Environment.new({name: 'name_example'}) # Environment | 

begin
  
  result = api_instance.create_environment(id, environment)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->create_environment: #{e}"
end
```

#### Using the create_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> create_environment_with_http_info(id, environment)

```ruby
begin
  
  data, status_code, headers = api_instance.create_environment_with_http_info(id, environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->create_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **environment** | [**Environment**](Environment.md) |  |  |

### Return type

[**Environment**](Environment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_environment

> Boolean delete_environment(eid, opts)



Delete an environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find
opts = {
  include_acls: true, # Boolean | Include the acls attached to this environment
  include_features: true, # Boolean | Include the features attached to this environment
  include_details: true # Boolean | Include all environment details
}

begin
  
  result = api_instance.delete_environment(eid, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->delete_environment: #{e}"
end
```

#### Using the delete_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_environment_with_http_info(eid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_environment_with_http_info(eid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->delete_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find |  |
| **include_acls** | **Boolean** | Include the acls attached to this environment | [optional] |
| **include_features** | **Boolean** | Include the features attached to this environment | [optional] |
| **include_details** | **Boolean** | Include all environment details | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## environment_ordering

> <Array<Environment>> environment_ordering(id, environment)



this api is designed to update the ordering of environments. it will error on circular references or environments that don't exist.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
environment = [FeaturehubAdminSdk::Environment.new({name: 'name_example'})] # Array<Environment> | 

begin
  
  result = api_instance.environment_ordering(id, environment)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->environment_ordering: #{e}"
end
```

#### Using the environment_ordering_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Environment>>, Integer, Hash)> environment_ordering_with_http_info(id, environment)

```ruby
begin
  
  data, status_code, headers = api_instance.environment_ordering_with_http_info(id, environment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Environment>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->environment_ordering_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **environment** | [**Array&lt;Environment&gt;**](Environment.md) |  |  |

### Return type

[**Array&lt;Environment&gt;**](Environment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## find_environments

> <Array<Environment>> find_environments(id, opts)



Gets a list of environments.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  order: FeaturehubAdminSdk::EnvironmentSortOrder::ASC, # EnvironmentSortOrder | how to order the results
  filter: 'filter_example', # String | What to filter the results by
  include_acls: true, # Boolean | Include the acls attached to this environment
  include_features: true, # Boolean | Include the features attached to this environment
  include_details: true # Boolean | Include all environment details
}

begin
  
  result = api_instance.find_environments(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->find_environments: #{e}"
end
```

#### Using the find_environments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Environment>>, Integer, Hash)> find_environments_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_environments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Environment>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->find_environments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the application to find |  |
| **order** | [**EnvironmentSortOrder**](.md) | how to order the results | [optional] |
| **filter** | **String** | What to filter the results by | [optional] |
| **include_acls** | **Boolean** | Include the acls attached to this environment | [optional] |
| **include_features** | **Boolean** | Include the features attached to this environment | [optional] |
| **include_details** | **Boolean** | Include all environment details | [optional] |

### Return type

[**Array&lt;Environment&gt;**](Environment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_environment

> <Environment> get_environment(eid, opts)



Get environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find
opts = {
  include_acls: true, # Boolean | Include the acls attached to this environment
  include_features: true, # Boolean | Include the features attached to this environment
  include_details: true, # Boolean | Include all environment details
  include_sdk_url: true, # Boolean | include the sdk url
  include_service_accounts: true # Boolean | Include the service accounts attached to this environment
}

begin
  
  result = api_instance.get_environment(eid, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->get_environment: #{e}"
end
```

#### Using the get_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> get_environment_with_http_info(eid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_environment_with_http_info(eid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->get_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find |  |
| **include_acls** | **Boolean** | Include the acls attached to this environment | [optional] |
| **include_features** | **Boolean** | Include the features attached to this environment | [optional] |
| **include_details** | **Boolean** | Include all environment details | [optional] |
| **include_sdk_url** | **Boolean** | include the sdk url | [optional] |
| **include_service_accounts** | **Boolean** | Include the service accounts attached to this environment | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_environment

> <Environment> update_environment(eid, environment, opts)



Update an environment. Please use updateEnvironment2 as that has the fields that can actually be updated

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::EnvironmentServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find
environment = FeaturehubAdminSdk::Environment.new({name: 'name_example'}) # Environment | 
opts = {
  include_acls: true, # Boolean | Include the acls attached to this environment
  include_features: true, # Boolean | Include the features attached to this environment
  include_details: true # Boolean | Include all environment details
}

begin
  
  result = api_instance.update_environment(eid, environment, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->update_environment: #{e}"
end
```

#### Using the update_environment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> update_environment_with_http_info(eid, environment, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_environment_with_http_info(eid, environment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling EnvironmentServiceApi->update_environment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find |  |
| **environment** | [**Environment**](Environment.md) |  |  |
| **include_acls** | **Boolean** | Include the acls attached to this environment | [optional] |
| **include_features** | **Boolean** | Include the features attached to this environment | [optional] |
| **include_details** | **Boolean** | Include all environment details | [optional] |

### Return type

[**Environment**](Environment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

