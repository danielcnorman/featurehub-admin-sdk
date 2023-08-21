# FeaturehubAdminSdk::RolloutStrategyServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rollout_strategy**](RolloutStrategyServiceApi.md#create_rollout_strategy) | **POST** /mr-api/application/{appId}/rollout-strategy |  |
| [**delete_rollout_strategy**](RolloutStrategyServiceApi.md#delete_rollout_strategy) | **DELETE** /mr-api/application/{appId}/rollout-strategy/{strategyIdOrName} |  |
| [**get_rollout_strategy**](RolloutStrategyServiceApi.md#get_rollout_strategy) | **GET** /mr-api/application/{appId}/rollout-strategy/{strategyIdOrName} |  |
| [**list_application_rollout_strategies**](RolloutStrategyServiceApi.md#list_application_rollout_strategies) | **GET** /mr-api/application/{appId}/rollout-strategy |  |
| [**update_rollout_strategy**](RolloutStrategyServiceApi.md#update_rollout_strategy) | **PUT** /mr-api/application/{appId}/rollout-strategy/{strategyIdOrName} |  |
| [**validate**](RolloutStrategyServiceApi.md#validate) | **POST** /mr-api/application/{appId}/rollout-strategy-validation |  |


## create_rollout_strategy

> <RolloutStrategyInfo> create_rollout_strategy(app_id, rollout_strategy, opts)



### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
rollout_strategy = FeaturehubAdminSdk::RolloutStrategy.new({name: 'name_example'}) # RolloutStrategy | 
opts = {
  include_who_changed: true # Boolean | include who changed
}

begin
  
  result = api_instance.create_rollout_strategy(app_id, rollout_strategy, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->create_rollout_strategy: #{e}"
end
```

#### Using the create_rollout_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolloutStrategyInfo>, Integer, Hash)> create_rollout_strategy_with_http_info(app_id, rollout_strategy, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_rollout_strategy_with_http_info(app_id, rollout_strategy, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolloutStrategyInfo>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->create_rollout_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **rollout_strategy** | [**RolloutStrategy**](RolloutStrategy.md) |  |  |
| **include_who_changed** | **Boolean** | include who changed | [optional] |

### Return type

[**RolloutStrategyInfo**](RolloutStrategyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_rollout_strategy

> <RolloutStrategyInfo> delete_rollout_strategy(app_id, strategy_id_or_name, opts)



### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
strategy_id_or_name = 'strategy_id_or_name_example' # String | The id of the strategy or the unique name of it
opts = {
  include_who_changed: true # Boolean | include who changed
}

begin
  
  result = api_instance.delete_rollout_strategy(app_id, strategy_id_or_name, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->delete_rollout_strategy: #{e}"
end
```

#### Using the delete_rollout_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolloutStrategyInfo>, Integer, Hash)> delete_rollout_strategy_with_http_info(app_id, strategy_id_or_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_rollout_strategy_with_http_info(app_id, strategy_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolloutStrategyInfo>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->delete_rollout_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **strategy_id_or_name** | **String** | The id of the strategy or the unique name of it |  |
| **include_who_changed** | **Boolean** | include who changed | [optional] |

### Return type

[**RolloutStrategyInfo**](RolloutStrategyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_rollout_strategy

> <RolloutStrategyInfo> get_rollout_strategy(app_id, strategy_id_or_name, opts)



### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
strategy_id_or_name = 'strategy_id_or_name_example' # String | The id of the strategy or the unique name of it
opts = {
  include_who_changed: true # Boolean | include who changed
}

begin
  
  result = api_instance.get_rollout_strategy(app_id, strategy_id_or_name, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->get_rollout_strategy: #{e}"
end
```

#### Using the get_rollout_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolloutStrategyInfo>, Integer, Hash)> get_rollout_strategy_with_http_info(app_id, strategy_id_or_name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_rollout_strategy_with_http_info(app_id, strategy_id_or_name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolloutStrategyInfo>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->get_rollout_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **strategy_id_or_name** | **String** | The id of the strategy or the unique name of it |  |
| **include_who_changed** | **Boolean** | include who changed | [optional] |

### Return type

[**RolloutStrategyInfo**](RolloutStrategyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_application_rollout_strategies

> <Array<RolloutStrategyInfo>> list_application_rollout_strategies(app_id, opts)



### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
opts = {
  include_who_changed: true, # Boolean | include who changed
  include_archived: true # Boolean | Include archived strategies
}

begin
  
  result = api_instance.list_application_rollout_strategies(app_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->list_application_rollout_strategies: #{e}"
end
```

#### Using the list_application_rollout_strategies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<RolloutStrategyInfo>>, Integer, Hash)> list_application_rollout_strategies_with_http_info(app_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.list_application_rollout_strategies_with_http_info(app_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<RolloutStrategyInfo>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->list_application_rollout_strategies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **include_who_changed** | **Boolean** | include who changed | [optional] |
| **include_archived** | **Boolean** | Include archived strategies | [optional] |

### Return type

[**Array&lt;RolloutStrategyInfo&gt;**](RolloutStrategyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_rollout_strategy

> <RolloutStrategyInfo> update_rollout_strategy(app_id, strategy_id_or_name, rollout_strategy, opts)



### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
strategy_id_or_name = 'strategy_id_or_name_example' # String | The id of the strategy or the unique name of it
rollout_strategy = FeaturehubAdminSdk::RolloutStrategy.new({name: 'name_example'}) # RolloutStrategy | 
opts = {
  include_who_changed: true # Boolean | include who changed
}

begin
  
  result = api_instance.update_rollout_strategy(app_id, strategy_id_or_name, rollout_strategy, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->update_rollout_strategy: #{e}"
end
```

#### Using the update_rollout_strategy_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolloutStrategyInfo>, Integer, Hash)> update_rollout_strategy_with_http_info(app_id, strategy_id_or_name, rollout_strategy, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_rollout_strategy_with_http_info(app_id, strategy_id_or_name, rollout_strategy, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolloutStrategyInfo>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->update_rollout_strategy_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **strategy_id_or_name** | **String** | The id of the strategy or the unique name of it |  |
| **rollout_strategy** | [**RolloutStrategy**](RolloutStrategy.md) |  |  |
| **include_who_changed** | **Boolean** | include who changed | [optional] |

### Return type

[**RolloutStrategyInfo**](RolloutStrategyInfo.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate

> <RolloutStrategyValidationResponse> validate(app_id, rollout_strategy_validation_request)



Provide server validation responses for this group of rollout strategies

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::RolloutStrategyServiceApi.new
app_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the application to find
rollout_strategy_validation_request = FeaturehubAdminSdk::RolloutStrategyValidationRequest.new # RolloutStrategyValidationRequest | 

begin
  
  result = api_instance.validate(app_id, rollout_strategy_validation_request)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->validate: #{e}"
end
```

#### Using the validate_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RolloutStrategyValidationResponse>, Integer, Hash)> validate_with_http_info(app_id, rollout_strategy_validation_request)

```ruby
begin
  
  data, status_code, headers = api_instance.validate_with_http_info(app_id, rollout_strategy_validation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RolloutStrategyValidationResponse>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling RolloutStrategyServiceApi->validate_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app_id** | **String** | The id of the application to find |  |
| **rollout_strategy_validation_request** | [**RolloutStrategyValidationRequest**](RolloutStrategyValidationRequest.md) |  |  |

### Return type

[**RolloutStrategyValidationResponse**](RolloutStrategyValidationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

