# FeaturehubAdminSdk::CacheServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**cache_refresh**](CacheServiceApi.md#cache_refresh) | **POST** /mr-api/dacha1/cache |  |


## cache_refresh

> <CacheRefreshResponse> cache_refresh(cache_refresh_request)



Allows superusers to refresh the global Dacha1 cache (if it exists).

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::CacheServiceApi.new
cache_refresh_request = FeaturehubAdminSdk::CacheRefreshRequest.new # CacheRefreshRequest | 

begin
  
  result = api_instance.cache_refresh(cache_refresh_request)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling CacheServiceApi->cache_refresh: #{e}"
end
```

#### Using the cache_refresh_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CacheRefreshResponse>, Integer, Hash)> cache_refresh_with_http_info(cache_refresh_request)

```ruby
begin
  
  data, status_code, headers = api_instance.cache_refresh_with_http_info(cache_refresh_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CacheRefreshResponse>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling CacheServiceApi->cache_refresh_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cache_refresh_request** | [**CacheRefreshRequest**](CacheRefreshRequest.md) |  |  |

### Return type

[**CacheRefreshResponse**](CacheRefreshResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

