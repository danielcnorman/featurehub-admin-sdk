# FeaturehubAdminSdk::WebhookServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_webhook_details**](WebhookServiceApi.md#get_webhook_details) | **GET** /mr-api/webhooks/{envId}/{id} |  |
| [**get_webhook_types**](WebhookServiceApi.md#get_webhook_types) | **GET** /mr-api/webhooks |  |
| [**list_webhooks**](WebhookServiceApi.md#list_webhooks) | **GET** /mr-api/webhooks/{envId} |  |
| [**test_webhook**](WebhookServiceApi.md#test_webhook) | **POST** /mr-api/webhooks |  |


## get_webhook_details

> <WebhookDetail> get_webhook_details(env_id, id)



Gets a specific webhook to show its details based on whats allowed

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::WebhookServiceApi.new
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  
  result = api_instance.get_webhook_details(env_id, id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->get_webhook_details: #{e}"
end
```

#### Using the get_webhook_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookDetail>, Integer, Hash)> get_webhook_details_with_http_info(env_id, id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_webhook_details_with_http_info(env_id, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookDetail>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->get_webhook_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **env_id** | **String** |  |  |
| **id** | **String** |  |  |

### Return type

[**WebhookDetail**](WebhookDetail.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook_types

> <WebhookTypeDetails> get_webhook_types



Gets a list of well known webhook types

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::WebhookServiceApi.new

begin
  
  result = api_instance.get_webhook_types
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->get_webhook_types: #{e}"
end
```

#### Using the get_webhook_types_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookTypeDetails>, Integer, Hash)> get_webhook_types_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_webhook_types_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookTypeDetails>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->get_webhook_types_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WebhookTypeDetails**](WebhookTypeDetails.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> <WebhookSummary> list_webhooks(env_id, opts)



Provides a pagination API for listing webhooks for a specific environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::WebhookServiceApi.new
env_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  max: 56, # Integer | where to start
  start_at: 56, # Integer | what position in the results to start at
  filter: 'filter_example' # String | what types of webhooks to look for
}

begin
  
  result = api_instance.list_webhooks(env_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->list_webhooks: #{e}"
end
```

#### Using the list_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookSummary>, Integer, Hash)> list_webhooks_with_http_info(env_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_webhooks_with_http_info(env_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookSummary>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->list_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **env_id** | **String** |  |  |
| **max** | **Integer** | where to start | [optional] |
| **start_at** | **Integer** | what position in the results to start at | [optional] |
| **filter** | **String** | what types of webhooks to look for | [optional] |

### Return type

[**WebhookSummary**](WebhookSummary.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_webhook

> test_webhook(webhook_check)



Send a ping webhook to see if everything is working

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::WebhookServiceApi.new
webhook_check = FeaturehubAdminSdk::WebhookCheck.new({message_type: 'message_type_example', env_id: 'env_id_example', config: { key: 'inner_example'}}) # WebhookCheck | 

begin
  
  api_instance.test_webhook(webhook_check)
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->test_webhook: #{e}"
end
```

#### Using the test_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> test_webhook_with_http_info(webhook_check)

```ruby
begin
  
  data, status_code, headers = api_instance.test_webhook_with_http_info(webhook_check)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling WebhookServiceApi->test_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_check** | [**WebhookCheck**](WebhookCheck.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

