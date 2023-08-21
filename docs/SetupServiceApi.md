# FeaturehubAdminSdk::SetupServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**is_installed**](SetupServiceApi.md#is_installed) | **GET** /mr-api/initialize |  |
| [**setup_site_admin**](SetupServiceApi.md#setup_site_admin) | **POST** /mr-api/initialize |  |


## is_installed

> <SetupResponse> is_installed



Ping Feature Hub

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::SetupServiceApi.new

begin
  
  result = api_instance.is_installed
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling SetupServiceApi->is_installed: #{e}"
end
```

#### Using the is_installed_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetupResponse>, Integer, Hash)> is_installed_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.is_installed_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetupResponse>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling SetupServiceApi->is_installed_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SetupResponse**](SetupResponse.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## setup_site_admin

> <TokenizedPerson> setup_site_admin(setup_site_admin)



Setup site admin

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::SetupServiceApi.new
setup_site_admin = FeaturehubAdminSdk::SetupSiteAdmin.new({portfolio: 'portfolio_example', organization_name: 'organization_name_example'}) # SetupSiteAdmin | setupSiteAdmin

begin
  
  result = api_instance.setup_site_admin(setup_site_admin)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling SetupServiceApi->setup_site_admin: #{e}"
end
```

#### Using the setup_site_admin_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenizedPerson>, Integer, Hash)> setup_site_admin_with_http_info(setup_site_admin)

```ruby
begin
  
  data, status_code, headers = api_instance.setup_site_admin_with_http_info(setup_site_admin)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenizedPerson>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling SetupServiceApi->setup_site_admin_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **setup_site_admin** | [**SetupSiteAdmin**](SetupSiteAdmin.md) | setupSiteAdmin |  |

### Return type

[**TokenizedPerson**](TokenizedPerson.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

