# FeaturehubAdminSdk::AuthServiceApi

All URIs are relative to *https://raw.githubusercontent.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**change_password**](AuthServiceApi.md#change_password) | **PUT** /mr-api/authentication/{id}/changePassword |  |
| [**get_login_url_for_provider**](AuthServiceApi.md#get_login_url_for_provider) | **GET** /mr-api/external-provider/{provider} |  |
| [**login**](AuthServiceApi.md#login) | **POST** /mr-api/login |  |
| [**logout**](AuthServiceApi.md#logout) | **GET** /mr-api/logout |  |
| [**person_by_token**](AuthServiceApi.md#person_by_token) | **GET** /mr-api/authentication/{token} |  |
| [**register_person**](AuthServiceApi.md#register_person) | **POST** /mr-api/authentication |  |
| [**replace_temp_password**](AuthServiceApi.md#replace_temp_password) | **PUT** /mr-api/authentication/{id}/replaceTempPassword |  |
| [**reset_expired_token**](AuthServiceApi.md#reset_expired_token) | **POST** /mr-api/authentication/{email}/expiredTokenReset |  |
| [**reset_password**](AuthServiceApi.md#reset_password) | **PUT** /mr-api/authentication/{id}/resetPassword |  |


## change_password

> <Person> change_password(id, password_update)



Change password

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to change password for
password_update = FeaturehubAdminSdk::PasswordUpdate.new({old_password: 'old_password_example', new_password: 'new_password_example'}) # PasswordUpdate | 

begin
  
  result = api_instance.change_password(id, password_update)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->change_password: #{e}"
end
```

#### Using the change_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> change_password_with_http_info(id, password_update)

```ruby
begin
  
  data, status_code, headers = api_instance.change_password_with_http_info(id, password_update)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->change_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to change password for |  |
| **password_update** | [**PasswordUpdate**](PasswordUpdate.md) |  |  |

### Return type

[**Person**](Person.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_login_url_for_provider

> <ProviderRedirect> get_login_url_for_provider(provider)



Gets a login URL for this specified provider if it is supported by the server

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
provider = 'provider_example' # String | 

begin
  
  result = api_instance.get_login_url_for_provider(provider)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->get_login_url_for_provider: #{e}"
end
```

#### Using the get_login_url_for_provider_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ProviderRedirect>, Integer, Hash)> get_login_url_for_provider_with_http_info(provider)

```ruby
begin
  
  data, status_code, headers = api_instance.get_login_url_for_provider_with_http_info(provider)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ProviderRedirect>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->get_login_url_for_provider_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | **String** |  |  |

### Return type

[**ProviderRedirect**](ProviderRedirect.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## login

> <TokenizedPerson> login(user_credentials)



Login to Feature Hub

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
user_credentials = FeaturehubAdminSdk::UserCredentials.new({email: 'email_example', password: 'password_example'}) # UserCredentials | 

begin
  
  result = api_instance.login(user_credentials)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->login: #{e}"
end
```

#### Using the login_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenizedPerson>, Integer, Hash)> login_with_http_info(user_credentials)

```ruby
begin
  
  data, status_code, headers = api_instance.login_with_http_info(user_credentials)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenizedPerson>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->login_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_credentials** | [**UserCredentials**](UserCredentials.md) |  |  |

### Return type

[**TokenizedPerson**](TokenizedPerson.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## logout

> logout



Get person by token

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::AuthServiceApi.new

begin
  
  api_instance.logout
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->logout: #{e}"
end
```

#### Using the logout_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> logout_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.logout_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->logout_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## person_by_token

> <Person> person_by_token(token)



Get person by token

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
token = 'token_example' # String | 

begin
  
  result = api_instance.person_by_token(token)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->person_by_token: #{e}"
end
```

#### Using the person_by_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> person_by_token_with_http_info(token)

```ruby
begin
  
  data, status_code, headers = api_instance.person_by_token_with_http_info(token)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->person_by_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **token** | **String** |  |  |

### Return type

[**Person**](Person.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## register_person

> <TokenizedPerson> register_person(person_registration_details)



Create a new user

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
person_registration_details = FeaturehubAdminSdk::PersonRegistrationDetails.new({name: 'name_example', email: 'email_example', password: 'password_example', confirm_password: 'confirm_password_example', registration_token: 'registration_token_example'}) # PersonRegistrationDetails | 

begin
  
  result = api_instance.register_person(person_registration_details)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->register_person: #{e}"
end
```

#### Using the register_person_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenizedPerson>, Integer, Hash)> register_person_with_http_info(person_registration_details)

```ruby
begin
  
  data, status_code, headers = api_instance.register_person_with_http_info(person_registration_details)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenizedPerson>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->register_person_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **person_registration_details** | [**PersonRegistrationDetails**](PersonRegistrationDetails.md) |  |  |

### Return type

[**TokenizedPerson**](TokenizedPerson.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## replace_temp_password

> <TokenizedPerson> replace_temp_password(id, password_reset)



Replace temporary password

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to replace temporary password for
password_reset = FeaturehubAdminSdk::PasswordReset.new({password: 'password_example'}) # PasswordReset | 

begin
  
  result = api_instance.replace_temp_password(id, password_reset)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->replace_temp_password: #{e}"
end
```

#### Using the replace_temp_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TokenizedPerson>, Integer, Hash)> replace_temp_password_with_http_info(id, password_reset)

```ruby
begin
  
  data, status_code, headers = api_instance.replace_temp_password_with_http_info(id, password_reset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TokenizedPerson>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->replace_temp_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to replace temporary password for |  |
| **password_reset** | [**PasswordReset**](PasswordReset.md) |  |  |

### Return type

[**TokenizedPerson**](TokenizedPerson.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reset_expired_token

> <RegistrationUrl> reset_expired_token(email)



Allows an administrator to reset a user's expired token so they can login

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
email = 'email_example' # String | The email address of the person whose expired token to reset

begin
  
  result = api_instance.reset_expired_token(email)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->reset_expired_token: #{e}"
end
```

#### Using the reset_expired_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RegistrationUrl>, Integer, Hash)> reset_expired_token_with_http_info(email)

```ruby
begin
  
  data, status_code, headers = api_instance.reset_expired_token_with_http_info(email)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RegistrationUrl>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->reset_expired_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email address of the person whose expired token to reset |  |

### Return type

[**RegistrationUrl**](RegistrationUrl.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## reset_password

> <Person> reset_password(id, password_reset)



Reset password

### Examples

```ruby
require 'time'
require 'featurehub-admin-sdk'
# setup authorization
FeaturehubAdminSdk.configure do |config|
  # Configure Bearer authorization (JWT): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = FeaturehubAdminSdk::AuthServiceApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The id of the person to reset password for
password_reset = FeaturehubAdminSdk::PasswordReset.new({password: 'password_example'}) # PasswordReset | 

begin
  
  result = api_instance.reset_password(id, password_reset)
  p result
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->reset_password: #{e}"
end
```

#### Using the reset_password_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Person>, Integer, Hash)> reset_password_with_http_info(id, password_reset)

```ruby
begin
  
  data, status_code, headers = api_instance.reset_password_with_http_info(id, password_reset)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Person>
rescue FeaturehubAdminSdk::ApiError => e
  puts "Error when calling AuthServiceApi->reset_password_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the person to reset password for |  |
| **password_reset** | [**PasswordReset**](PasswordReset.md) |  |  |

### Return type

[**Person**](Person.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

