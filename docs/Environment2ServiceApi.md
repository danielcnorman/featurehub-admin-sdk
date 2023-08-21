# FeaturehubAdminSdk::Environment2ServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**update_environment_v2**](Environment2ServiceApi.md#update_environment_v2) | **PUT** /mr-api/environment/{eid}/v2 |  |


## update_environment_v2

> <Environment> update_environment_v2(eid, update_environment, opts)



Update an environment

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::Environment2ServiceApi.new
eid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the environment to find
update_environment = FeaturehubAdminSdk::UpdateEnvironment.new({version: 3.56}) # UpdateEnvironment | 
opts = {
  include_acls: true, # Boolean | Include the acls attached to this environment
  include_features: true, # Boolean | Include the features attached to this environment
  include_details: true # Boolean | Include all environment details
}

begin
  
  result = api_instance.update_environment_v2(eid, update_environment, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling Environment2ServiceApi->update_environment_v2: #{e}"
end
```

#### Using the update_environment_v2_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Environment>, Integer, Hash)> update_environment_v2_with_http_info(eid, update_environment, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_environment_v2_with_http_info(eid, update_environment, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Environment>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling Environment2ServiceApi->update_environment_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **eid** | **String** | The id of the environment to find |  |
| **update_environment** | [**UpdateEnvironment**](UpdateEnvironment.md) |  |  |
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

