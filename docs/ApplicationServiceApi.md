# FeaturehubAdminSdk::ApplicationServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_application**](ApplicationServiceApi.md#create_application) | **POST** /mr-api/portfolio/{id}/application |  |
| [**delete_application**](ApplicationServiceApi.md#delete_application) | **DELETE** /mr-api/application/{appId} |  |
| [**find_applications**](ApplicationServiceApi.md#find_applications) | **GET** /mr-api/portfolio/{id}/application |  |
| [**get_application**](ApplicationServiceApi.md#get_application) | **GET** /mr-api/application/{appId} |  |
| [**summary_application**](ApplicationServiceApi.md#summary_application) | **GET** /mr-api/application/{appId}/summary |  |
| [**update_application**](ApplicationServiceApi.md#update_application) | **PUT** /mr-api/application/{appId} |  |


## create_application

> <Application> create_application(id, application, opts)



Create a new application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
application = FeaturehubAdminSdk::Application.new({name: 'name_example'}) # Application | 
opts = {
  include_environments: true, # Boolean | Include the environments in the result
  include_features: true # Boolean | Include the features in the result
}

begin
  
  result = api_instance.create_application(id, application, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->create_application: #{e}"
end
```

#### Using the create_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Application>, Integer, Hash)> create_application_with_http_info(id, application, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_application_with_http_info(id, application, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Application>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->create_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **application** | [**Application**](Application.md) |  |  |
| **include_environments** | **Boolean** | Include the environments in the result | [optional] |
| **include_features** | **Boolean** | Include the features in the result | [optional] |

### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_application

> Boolean delete_application(app_id, opts)



Delete an application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  include_environments: true # Boolean | Include the environments in the result
}

begin
  
  result = api_instance.delete_application(app_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->delete_application: #{e}"
end
```

#### Using the delete_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_application_with_http_info(app_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_application_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->delete_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **include_environments** | **Boolean** | Include the environments in the result | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_applications

> <Array<Application>> find_applications(id, opts)



Gets a list of applications.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
opts = {
  include_environments: true, # Boolean | Include the environments in the result
  include_features: true, # Boolean | Include the features in the result
  order: FeaturehubAdminSdk::SortOrder::ASC, # SortOrder | how to order the results
  filter: 'filter_example' # String | What to filter the results by
}

begin
  
  result = api_instance.find_applications(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->find_applications: #{e}"
end
```

#### Using the find_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Application>>, Integer, Hash)> find_applications_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_applications_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Application>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->find_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **include_environments** | **Boolean** | Include the environments in the result | [optional] |
| **include_features** | **Boolean** | Include the features in the result | [optional] |
| **order** | [**SortOrder**](.md) | how to order the results | [optional] |
| **filter** | **String** | What to filter the results by | [optional] |

### Return type

[**Array&lt;Application&gt;**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_application

> <Application> get_application(app_id, opts)



Get application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  include_environments: true # Boolean | Include the environments in the result
}

begin
  
  result = api_instance.get_application(app_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->get_application: #{e}"
end
```

#### Using the get_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Application>, Integer, Hash)> get_application_with_http_info(app_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_application_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Application>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->get_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **include_environments** | **Boolean** | Include the environments in the result | [optional] |

### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## summary_application

> <ApplicationSummary> summary_application(app_id)



Geta summary of the application status

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find

begin
  
  result = api_instance.summary_application(app_id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->summary_application: #{e}"
end
```

#### Using the summary_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationSummary>, Integer, Hash)> summary_application_with_http_info(app_id)

```ruby
begin
  
  data, status_code, headers = api_instance.summary_application_with_http_info(app_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationSummary>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->summary_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |

### Return type

[**ApplicationSummary**](ApplicationSummary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_application

> <Application> update_application(app_id, application, opts)



Update an application

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ApplicationServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
application = FeaturehubAdminSdk::Application.new({name: 'name_example'}) # Application | 
opts = {
  include_environments: true # Boolean | Include the environments in the result
}

begin
  
  result = api_instance.update_application(app_id, application, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->update_application: #{e}"
end
```

#### Using the update_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Application>, Integer, Hash)> update_application_with_http_info(app_id, application, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_application_with_http_info(app_id, application, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Application>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ApplicationServiceApi->update_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **application** | [**Application**](Application.md) |  |  |
| **include_environments** | **Boolean** | Include the environments in the result | [optional] |

### Return type

[**Application**](Application.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

