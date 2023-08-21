# FeaturehubAdminSdk::PortfolioServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_portfolio**](PortfolioServiceApi.md#create_portfolio) | **POST** /mr-api/portfolio |  |
| [**delete_portfolio**](PortfolioServiceApi.md#delete_portfolio) | **DELETE** /mr-api/portfolio/{id} |  |
| [**find_portfolios**](PortfolioServiceApi.md#find_portfolios) | **GET** /mr-api/portfolio |  |
| [**get_portfolio**](PortfolioServiceApi.md#get_portfolio) | **GET** /mr-api/portfolio/{id} |  |
| [**update_portfolio**](PortfolioServiceApi.md#update_portfolio) | **PUT** /mr-api/portfolio/{id} |  |


## create_portfolio

> <Portfolio> create_portfolio(portfolio, opts)



Create a new portfolio

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PortfolioServiceApi.new
portfolio = FeaturehubAdminSdk::Portfolio.new({name: 'name_example'}) # Portfolio | 
opts = {
  include_groups: true, # Boolean | Include groups for this this portfolio in results
  include_applications: true # Boolean | Include applications for this portfolio in results
}

begin
  
  result = api_instance.create_portfolio(portfolio, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->create_portfolio: #{e}"
end
```

#### Using the create_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> create_portfolio_with_http_info(portfolio, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_portfolio_with_http_info(portfolio, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->create_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio** | [**Portfolio**](Portfolio.md) |  |  |
| **include_groups** | **Boolean** | Include groups for this this portfolio in results | [optional] |
| **include_applications** | **Boolean** | Include applications for this portfolio in results | [optional] |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_portfolio

> Boolean delete_portfolio(id, opts)



Delete a portfolio

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PortfolioServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
opts = {
  include_groups: true, # Boolean | Include groups for this this portfolio in results
  include_applications: true, # Boolean | Include applications for this portfolio in results
  include_environments: true # Boolean | Include the environments inside the applications
}

begin
  
  result = api_instance.delete_portfolio(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->delete_portfolio: #{e}"
end
```

#### Using the delete_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_portfolio_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_portfolio_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->delete_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **include_groups** | **Boolean** | Include groups for this this portfolio in results | [optional] |
| **include_applications** | **Boolean** | Include applications for this portfolio in results | [optional] |
| **include_environments** | **Boolean** | Include the environments inside the applications | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_portfolios

> <Array<Portfolio>> find_portfolios(opts)



Gets a list of portfolios.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PortfolioServiceApi.new
opts = {
  include_groups: true, # Boolean | Include groups for this this portfolio in results
  include_applications: true, # Boolean | Include applications for this portfolio in results
  order: FeaturehubAdminSdk::SortOrder::ASC, # SortOrder | how to order the results
  filter: 'filter_example', # String | What to filter the results by
  parent_portfolio_id: 'parent_portfolio_id_example' # String | The parent portfolio to search under. If none is provided, use the top level one
}

begin
  
  result = api_instance.find_portfolios(opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->find_portfolios: #{e}"
end
```

#### Using the find_portfolios_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Portfolio>>, Integer, Hash)> find_portfolios_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_portfolios_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Portfolio>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->find_portfolios_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_groups** | **Boolean** | Include groups for this this portfolio in results | [optional] |
| **include_applications** | **Boolean** | Include applications for this portfolio in results | [optional] |
| **order** | [**SortOrder**](.md) | how to order the results | [optional] |
| **filter** | **String** | What to filter the results by | [optional] |
| **parent_portfolio_id** | **String** | The parent portfolio to search under. If none is provided, use the top level one | [optional] |

### Return type

[**Array&lt;Portfolio&gt;**](Portfolio.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_portfolio

> <Portfolio> get_portfolio(id, opts)



Get portfolio

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PortfolioServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
opts = {
  include_groups: true, # Boolean | Include groups for this this portfolio in results
  include_applications: true, # Boolean | Include applications for this portfolio in results
  include_environments: true # Boolean | Include the environments inside the applications
}

begin
  
  result = api_instance.get_portfolio(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->get_portfolio: #{e}"
end
```

#### Using the get_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> get_portfolio_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_portfolio_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->get_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **include_groups** | **Boolean** | Include groups for this this portfolio in results | [optional] |
| **include_applications** | **Boolean** | Include applications for this portfolio in results | [optional] |
| **include_environments** | **Boolean** | Include the environments inside the applications | [optional] |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_portfolio

> <Portfolio> update_portfolio(id, portfolio, opts)



Update a portfolio

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PortfolioServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
portfolio = FeaturehubAdminSdk::Portfolio.new({name: 'name_example'}) # Portfolio | 
opts = {
  include_groups: true, # Boolean | Include groups for this this portfolio in results
  include_applications: true, # Boolean | Include applications for this portfolio in results
  include_environments: true # Boolean | Include the environments inside the applications
}

begin
  
  result = api_instance.update_portfolio(id, portfolio, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->update_portfolio: #{e}"
end
```

#### Using the update_portfolio_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Portfolio>, Integer, Hash)> update_portfolio_with_http_info(id, portfolio, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_portfolio_with_http_info(id, portfolio, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Portfolio>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PortfolioServiceApi->update_portfolio_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **portfolio** | [**Portfolio**](Portfolio.md) |  |  |
| **include_groups** | **Boolean** | Include groups for this this portfolio in results | [optional] |
| **include_applications** | **Boolean** | Include applications for this portfolio in results | [optional] |
| **include_environments** | **Boolean** | Include the environments inside the applications | [optional] |

### Return type

[**Portfolio**](Portfolio.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

