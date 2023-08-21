# FeaturehubAdminSdk::PersonServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_person**](PersonServiceApi.md#create_person) | **POST** /mr-api/person |  |
| [**delete_person**](PersonServiceApi.md#delete_person) | **DELETE** /mr-api/person/{id} |  |
| [**find_people**](PersonServiceApi.md#find_people) | **GET** /mr-api/person |  |
| [**get_person**](PersonServiceApi.md#get_person) | **GET** /mr-api/person/{id} |  |
| [**reset_security_token**](PersonServiceApi.md#reset_security_token) | **POST** /mr-api/person/{id}/token-reset |  |
| [**update_person**](PersonServiceApi.md#update_person) | **PUT** /mr-api/person/{id} |  |
| [**update_person_v2**](PersonServiceApi.md#update_person_v2) | **PUT** /mr-api/person/{id}/v2 |  |


## create_person

> <RegistrationUrl> create_person(create_person_details, opts)



Create a new person

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
create_person_details = FeaturehubAdminSdk::CreatePersonDetails.new # CreatePersonDetails | 
opts = {
  include_groups: true # Boolean | Include groups in result
}

begin
  
  result = api_instance.create_person(create_person_details, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->create_person: #{e}"
end
```

#### Using the create_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationUrl>, Integer, Hash)> create_person_with_http_info(create_person_details, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.create_person_with_http_info(create_person_details, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationUrl>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->create_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_person_details** | [**CreatePersonDetails**](CreatePersonDetails.md) |  |  |
| **include_groups** | **Boolean** | Include groups in result | [optional] |

### Return type

[**RegistrationUrl**](RegistrationUrl.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_person

> Boolean delete_person(id, opts)



Delete a person

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to find
opts = {
  include_groups: true, # Boolean | Include groups in result
  include_acls: true # Boolean | include acls for each group
}

begin
  
  result = api_instance.delete_person(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->delete_person: #{e}"
end
```

#### Using the delete_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Boolean, Integer, Hash)> delete_person_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_person_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Boolean
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->delete_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to find |  |
| **include_groups** | **Boolean** | Include groups in result | [optional] |
| **include_acls** | **Boolean** | include acls for each group | [optional] |

### Return type

**Boolean**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_people

> <SearchPersonResult> find_people(opts)



Gets a list of matching people.

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
opts = {
  include_groups: true, # Boolean | Include groups in result
  count_groups: true, # Boolean | Return the number of groups
  order: FeaturehubAdminSdk::SortOrder::ASC, # SortOrder | how to order the results
  filter: 'filter_example', # String | What to filter the results by
  start_at: 56, # Integer | Where in the results to start
  page_size: 56, # Integer | How many results to return
  include_last_logged_in: true, # Boolean | Include last logged in timestamp
  include_deactivated: true, # Boolean | Include people who are no longer active
  person_types: [FeaturehubAdminSdk::PersonType::PERSON], # Array<PersonType> | Filter by person types
  sort_by: FeaturehubAdminSdk::SearchPersonSortBy::NAME # SearchPersonSortBy | 
}

begin
  
  result = api_instance.find_people(opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->find_people: #{e}"
end
```

#### Using the find_people_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchPersonResult>, Integer, Hash)> find_people_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.find_people_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchPersonResult>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->find_people_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_groups** | **Boolean** | Include groups in result | [optional] |
| **count_groups** | **Boolean** | Return the number of groups | [optional] |
| **order** | [**SortOrder**](.md) | how to order the results | [optional] |
| **filter** | **String** | What to filter the results by | [optional] |
| **start_at** | **Integer** | Where in the results to start | [optional] |
| **page_size** | **Integer** | How many results to return | [optional] |
| **include_last_logged_in** | **Boolean** | Include last logged in timestamp | [optional] |
| **include_deactivated** | **Boolean** | Include people who are no longer active | [optional] |
| **person_types** | [**Array&lt;PersonType&gt;**](PersonType.md) | Filter by person types | [optional] |
| **sort_by** | [**SearchPersonSortBy**](.md) |  | [optional] |

### Return type

[**SearchPersonResult**](SearchPersonResult.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_person

> <Person> get_person(id, opts)



Get person

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
id = 'id_example' # String | The id of the person to find. Duplicated here as we accept a plain string (not only a uuid)
opts = {
  include_groups: true, # Boolean | Include groups in result
  include_acls: true # Boolean | include acls for each group
}

begin
  
  result = api_instance.get_person(id, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->get_person: #{e}"
end
```

#### Using the get_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> get_person_with_http_info(id, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_person_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->get_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to find. Duplicated here as we accept a plain string (not only a uuid) |  |
| **include_groups** | **Boolean** | Include groups in result | [optional] |
| **include_acls** | **Boolean** | include acls for each group | [optional] |

### Return type

[**Person**](Person.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_security_token

> <AdminServiceResetTokenResponse> reset_security_token(id)



Reset security token of supported person type (usually service accounts only)

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to find

begin
  
  result = api_instance.reset_security_token(id)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->reset_security_token: #{e}"
end
```

#### Using the reset_security_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AdminServiceResetTokenResponse>, Integer, Hash)> reset_security_token_with_http_info(id)

```ruby
begin
  
  data, status_code, headers = api_instance.reset_security_token_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AdminServiceResetTokenResponse>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->reset_security_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to find |  |

### Return type

[**AdminServiceResetTokenResponse**](AdminServiceResetTokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_person

> <Person> update_person(id, person, opts)



Update a person

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to find
person = FeaturehubAdminSdk::Person.new # Person | 
opts = {
  include_groups: true, # Boolean | Include groups in result
  include_acls: true # Boolean | include acls for each group
}

begin
  
  result = api_instance.update_person(id, person, opts)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->update_person: #{e}"
end
```

#### Using the update_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> update_person_with_http_info(id, person, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.update_person_with_http_info(id, person, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->update_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to find |  |
| **person** | [**Person**](Person.md) |  |  |
| **include_groups** | **Boolean** | Include groups in result | [optional] |
| **include_acls** | **Boolean** | include acls for each group | [optional] |

### Return type

[**Person**](Person.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_person_v2

> update_person_v2(id, update_person)



Update a person

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::PersonServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to find
update_person = FeaturehubAdminSdk::UpdatePerson.new({version: 3.56}) # UpdatePerson | 

begin
  
  api_instance.update_person_v2(id, update_person)
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->update_person_v2: #{e}"
end
```

#### Using the update_person_v2_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_person_v2_with_http_info(id, update_person)

```ruby
begin
  
  data, status_code, headers = api_instance.update_person_v2_with_http_info(id, update_person)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling PersonServiceApi->update_person_v2_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to find |  |
| **update_person** | [**UpdatePerson**](UpdatePerson.md) |  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

