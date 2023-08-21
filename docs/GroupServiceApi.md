# FeaturehubAdminSdk::GroupServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_person_to_group**](GroupServiceApi.md#add_person_to_group) | **POST** /mr-api/group/{gid}/person/{pId} |  |
| [**create_group**](GroupServiceApi.md#create_group) | **POST** /mr-api/portfolio/{id}/group |  |
| [**delete_group**](GroupServiceApi.md#delete_group) | **DELETE** /mr-api/group/{gid} |  |
| [**delete_person_from_group**](GroupServiceApi.md#delete_person_from_group) | **DELETE** /mr-api/group/{gid}/person/{pId} |  |
| [**find_groups**](GroupServiceApi.md#find_groups) | **GET** /mr-api/portfolio/{id}/group |  |
| [**get_group**](GroupServiceApi.md#get_group) | **GET** /mr-api/group/{gid} |  |
| [**get_superuser_group**](GroupServiceApi.md#get_superuser_group) | **GET** /mr-api/organization/{id}/group |  |
| [**update_group**](GroupServiceApi.md#update_group) | **PUT** /mr-api/group/{gid} |  |


## add_person_to_group

> <Group> add_person_to_group(gid, p_id, opts)



Add a person to a group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
gid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to find
p_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to add/delete
opts = {
  include_members: true # Boolean | include people in each group
}

begin
  
  result = api_instance.add_person_to_group(gid, p_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->add_person_to_group: #{e}"
end
```

#### Using the add_person_to_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> add_person_to_group_with_http_info(gid, p_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.add_person_to_group_with_http_info(gid, p_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->add_person_to_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gid** | **String** | The id of the group to find |  |
| **p_id** | **String** | The id of the person to add/delete |  |
| **include_members** | **Boolean** | include people in each group | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_group

> <Group> create_group(id, group, opts)



Create a new group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
group = FeaturehubAdminSdk::Group.new({name: 'name_example'}) # Group | 
opts = {
  include_people: true # Boolean | include people in each group
}

begin
  
  result = api_instance.create_group(id, group, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->create_group: #{e}"
end
```

#### Using the create_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> create_group_with_http_info(id, group, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_group_with_http_info(id, group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->create_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **group** | [**Group**](Group.md) |  |  |
| **include_people** | **Boolean** | include people in each group | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_group

> Boolean delete_group(gid, opts)



Delete a group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
gid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to find
opts = {
  include_members: true, # Boolean | include people in each group
  include_group_roles: true # Boolean | include environment and application roles in each group
}

begin
  
  result = api_instance.delete_group(gid, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->delete_group: #{e}"
end
```

#### Using the delete_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_group_with_http_info(gid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_group_with_http_info(gid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->delete_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gid** | **String** | The id of the group to find |  |
| **include_members** | **Boolean** | include people in each group | [optional] |
| **include_group_roles** | **Boolean** | include environment and application roles in each group | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_person_from_group

> <Group> delete_person_from_group(gid, p_id, opts)



Remove a person from a group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
gid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to find
p_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to add/delete
opts = {
  include_members: true # Boolean | include people in each group
}

begin
  
  result = api_instance.delete_person_from_group(gid, p_id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->delete_person_from_group: #{e}"
end
```

#### Using the delete_person_from_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> delete_person_from_group_with_http_info(gid, p_id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_person_from_group_with_http_info(gid, p_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->delete_person_from_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gid** | **String** | The id of the group to find |  |
| **p_id** | **String** | The id of the person to add/delete |  |
| **include_members** | **Boolean** | include people in each group | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_groups

> <Array<Group>> find_groups(id, opts)



Gets a list of groups.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the portfolio to find
opts = {
  include_people: true, # Boolean | include people in each group
  order: FeaturehubAdminSdk::SortOrder::ASC, # SortOrder | how to order the results
  filter: 'filter_example' # String | What to filter the results by
}

begin
  
  result = api_instance.find_groups(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->find_groups: #{e}"
end
```

#### Using the find_groups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Group>>, Integer, Hash)> find_groups_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_groups_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Group>>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->find_groups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the portfolio to find |  |
| **include_people** | **Boolean** | include people in each group | [optional] |
| **order** | [**SortOrder**](.md) | how to order the results | [optional] |
| **filter** | **String** | What to filter the results by | [optional] |

### Return type

[**Array&lt;Group&gt;**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_group

> <Group> get_group(gid, opts)



Get group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
gid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to find
opts = {
  include_members: true, # Boolean | include people in each group
  include_group_roles: true, # Boolean | include environment and application roles in each group
  by_application_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
}

begin
  
  result = api_instance.get_group(gid, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->get_group: #{e}"
end
```

#### Using the get_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> get_group_with_http_info(gid, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_group_with_http_info(gid, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->get_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gid** | **String** | The id of the group to find |  |
| **include_members** | **Boolean** | include people in each group | [optional] |
| **include_group_roles** | **Boolean** | include environment and application roles in each group | [optional] |
| **by_application_id** | **String** |  | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_superuser_group

> <Group> get_superuser_group(id)



Gets the superuser group for this organisation. There is no other way to ascertain which org you are dealing with

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id of the organisation

begin
  
  result = api_instance.get_superuser_group(id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->get_superuser_group: #{e}"
end
```

#### Using the get_superuser_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> get_superuser_group_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.get_superuser_group_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->get_superuser_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id of the organisation |  |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_group

> <Group> update_group(gid, group, opts)



Update a group

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::GroupServiceApi.new
gid = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the group to find
group = FeaturehubAdminSdk::Group.new({name: 'name_example'}) # Group | 
opts = {
  include_members: true, # Boolean | include people in each group
  include_group_roles: true, # Boolean | include environment and application roles in each group
  update_members: true, # Boolean | update members, deleting those that are not passed
  update_environment_group_roles: true, # Boolean | update environment group roles, deleting any not passed
  update_application_group_roles: true, # Boolean | update application group roles, deleting any not passed
  application_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | if updating the application group roles, and the application id is passed, then the changes are limited to that application
}

begin
  
  result = api_instance.update_group(gid, group, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->update_group: #{e}"
end
```

#### Using the update_group_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Group>, Integer, Hash)> update_group_with_http_info(gid, group, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_group_with_http_info(gid, group, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Group>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling GroupServiceApi->update_group_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **gid** | **String** | The id of the group to find |  |
| **group** | [**Group**](Group.md) |  |  |
| **include_members** | **Boolean** | include people in each group | [optional] |
| **include_group_roles** | **Boolean** | include environment and application roles in each group | [optional] |
| **update_members** | **Boolean** | update members, deleting those that are not passed | [optional] |
| **update_environment_group_roles** | **Boolean** | update environment group roles, deleting any not passed | [optional] |
| **update_application_group_roles** | **Boolean** | update application group roles, deleting any not passed | [optional] |
| **application_id** | **String** | if updating the application group roles, and the application id is passed, then the changes are limited to that application | [optional] |

### Return type

[**Group**](Group.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

