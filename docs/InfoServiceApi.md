# FeaturehubAdminSdk::InfoServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_info_version**](InfoServiceApi.md#get_info_version) | **GET** /info/version |  |


## get_info_version

> <ApplicationVersionInfo> get_info_version



Gets information as to what this server is.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::InfoServiceApi.new

begin
  
  result = api_instance.get_info_version
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling InfoServiceApi->get_info_version: #{e}"
end
```

#### Using the get_info_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationVersionInfo>, Integer, Hash)> get_info_version_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_info_version_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationVersionInfo>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling InfoServiceApi->get_info_version_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**ApplicationVersionInfo**](ApplicationVersionInfo.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

