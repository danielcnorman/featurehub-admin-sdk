# FeaturehubAdminSdk::SetupSiteAdmin

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **portfolio** | **String** |  |  |
| **organization_name** | **String** |  |  |
| **email_address** | **String** | User&#39;s email or blank if using oauth/saml | [optional] |
| **password** | **String** | User&#39;s password or blank if using oauth/saml | [optional] |
| **name** | **String** | user&#39;s name. Will be take from external provider if using oauth/saml | [optional] |
| **auth_provider** | **String** | If the site is using external providers, this is the key of the provider chosen. If there is only one, it can be blank. | [optional] |

## Example

```ruby
require 'featurehub-admin-sdk'

instance = FeaturehubAdminSdk::SetupSiteAdmin.new(
  portfolio: null,
  organization_name: null,
  email_address: null,
  password: null,
  name: null,
  auth_provider: null
)
```

