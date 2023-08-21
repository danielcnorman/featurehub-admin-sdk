# FeaturehubAdminSdk::ServiceAccountServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_service_account_in_portfolio**](ServiceAccountServiceApi.md#create_service_account_in_portfolio) | **POST** /mr-api/portfolio/{id}/service-account |  |
| [**delete_service_account**](ServiceAccountServiceApi.md#delete_service_account) | **DELETE** /mr-api/service-account/{id} |  |
| [**get_service_account**](ServiceAccountServiceApi.md#get_service_account) | **GET** /mr-api/service-account/{id} |  |
| [**reset_api_key**](ServiceAccountServiceApi.md#reset_api_key) | **POST** /mr-api/service-account/{id}/reset-api-key |  |
| [**search_service_accounts_in_portfolio**](ServiceAccountServiceApi.md#search_service_accounts_in_portfolio) | **GET** /mr-api/portfolio/{id}/service-account |  |
| [**update_service_account**](ServiceAccountServiceApi.md#update_service_account) | **PUT** /mr-api/service-account/{id} |  |


## create_service_account_in_portfolio

> <ServiceAccount> create_service_account_in_portfolio(id, service_account, opts)



Add a new service account

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the portfolio this service account belongs to
service_account = FeaturehubAdminSdk::ServiceAccount.new({name: 'name_example'}) # ServiceAccount | 
opts = {
  include_permissions: true # Boolean | include permissions in return
}

begin
  
  result = api_instance.create_service_account_in_portfolio(id, service_account, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->create_service_account_in_portfolio: #{e}"
end
```

#### Using the create_service_account_in_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAccount>, Integer, Hash)> create_service_account_in_portfolio_with_http_info(id, service_account, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_service_account_in_portfolio_with_http_info(id, service_account, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAccount>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->create_service_account_in_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the portfolio this service account belongs to |  |
| **service_account** | [**ServiceAccount**](ServiceAccount.md) |  |  |
| **include_permissions** | **Boolean** | include permissions in return | [optional] |

### Return type

[**ServiceAccount**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service_account

> Boolean delete_service_account(id, opts)



Delete this service account, cascade removes all permissions

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id for the service account to get
opts = {
  include_permissions: true # Boolean | include permissions in return
}

begin
  
  result = api_instance.delete_service_account(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->delete_service_account: #{e}"
end
```

#### Using the delete_service_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_service_account_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_service_account_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->delete_service_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id for the service account to get |  |
| **include_permissions** | **Boolean** | include permissions in return | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_account

> <ServiceAccount> get_service_account(id, opts)



Get service account by id or 'self' if authenticated as this service account

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id for the service account to get
opts = {
  include_permissions: true, # Boolean | include permissions in return
  by_application_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  
  result = api_instance.get_service_account(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->get_service_account: #{e}"
end
```

#### Using the get_service_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAccount>, Integer, Hash)> get_service_account_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_service_account_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAccount>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->get_service_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id for the service account to get |  |
| **include_permissions** | **Boolean** | include permissions in return | [optional] |
| **by_application_id** | **String** |  | [optional] |

### Return type

[**ServiceAccount**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_api_key

> <ServiceAccount> reset_api_key(id, opts)



Causes a new API Key to be generated. Ensure you confirm this with the user.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id for the service account to get
opts = {
  api_key_type: FeaturehubAdminSdk::ResetApiKeyType::CLIENT_EVAL_ONLY # ResetApiKeyType | Type of the API key
}

begin
  
  result = api_instance.reset_api_key(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->reset_api_key: #{e}"
end
```

#### Using the reset_api_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAccount>, Integer, Hash)> reset_api_key_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.reset_api_key_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAccount>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->reset_api_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id for the service account to get |  |
| **api_key_type** | [**ResetApiKeyType**](.md) | Type of the API key | [optional] |

### Return type

[**ServiceAccount**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_service_accounts_in_portfolio

> <Array<ServiceAccount>> search_service_accounts_in_portfolio(id, opts)



Get list of all service accounts this user can see

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the portfolio this service account belongs to
opts = {
  include_permissions: true, # Boolean | include permissions in return
  filter: 'filter_example', # String | include environments for each account
  application_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Application ID to filter on
  include_sdk_urls: true # Boolean | Include the SDKs for environments the user has access to
}

begin
  
  result = api_instance.search_service_accounts_in_portfolio(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->search_service_accounts_in_portfolio: #{e}"
end
```

#### Using the search_service_accounts_in_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<ServiceAccount>>, Integer, Hash)> search_service_accounts_in_portfolio_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.search_service_accounts_in_portfolio_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<ServiceAccount>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->search_service_accounts_in_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the portfolio this service account belongs to |  |
| **include_permissions** | **Boolean** | include permissions in return | [optional] |
| **filter** | **String** | include environments for each account | [optional] |
| **application_id** | **String** | Application ID to filter on | [optional] |
| **include_sdk_urls** | **Boolean** | Include the SDKs for environments the user has access to | [optional] |

### Return type

[**Array&lt;ServiceAccount&gt;**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_service_account

> <ServiceAccount> update_service_account(id, service_account, opts)



Update this service account, overwiting any attached environment permissions this user has access to

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id for the service account to get
service_account = FeaturehubAdminSdk::ServiceAccount.new({name: 'name_example'}) # ServiceAccount | 
opts = {
  include_permissions: true # Boolean | include permissions in return
}

begin
  
  result = api_instance.update_service_account(id, service_account, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->update_service_account: #{e}"
end
```

#### Using the update_service_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceAccount>, Integer, Hash)> update_service_account_with_http_info(id, service_account, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_service_account_with_http_info(id, service_account, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceAccount>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling ServiceAccountServiceApi->update_service_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id for the service account to get |  |
| **service_account** | [**ServiceAccount**](ServiceAccount.md) |  |  |
| **include_permissions** | **Boolean** | include permissions in return | [optional] |

### Return type

[**ServiceAccount**](ServiceAccount.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

