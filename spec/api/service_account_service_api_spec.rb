=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::ServiceAccountServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ServiceAccountServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::ServiceAccountServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ServiceAccountServiceApi' do
    it 'should create an instance of ServiceAccountServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::ServiceAccountServiceApi)
    end
  end

  # unit tests for create_service_account_in_portfolio
  # Add a new service account
  # @param id the portfolio this service account belongs to
  # @param service_account 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_permissions include permissions in return
  # @return [ServiceAccount]
  describe 'create_service_account_in_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_service_account
  # Delete this service account, cascade removes all permissions
  # @param id the id for the service account to get
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_permissions include permissions in return
  # @return [Boolean]
  describe 'delete_service_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_service_account
  # Get service account by id or &#39;self&#39; if authenticated as this service account
  # @param id the id for the service account to get
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_permissions include permissions in return
  # @option opts [String] :by_application_id 
  # @return [ServiceAccount]
  describe 'get_service_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_api_key
  # Causes a new API Key to be generated. Ensure you confirm this with the user.
  # @param id the id for the service account to get
  # @param [Hash] opts the optional parameters
  # @option opts [ResetApiKeyType] :api_key_type Type of the API key
  # @return [ServiceAccount]
  describe 'reset_api_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for search_service_accounts_in_portfolio
  # Get list of all service accounts this user can see
  # @param id the portfolio this service account belongs to
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_permissions include permissions in return
  # @option opts [String] :filter include environments for each account
  # @option opts [String] :application_id Application ID to filter on
  # @option opts [Boolean] :include_sdk_urls Include the SDKs for environments the user has access to
  # @return [Array<ServiceAccount>]
  describe 'search_service_accounts_in_portfolio test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_service_account
  # Update this service account, overwiting any attached environment permissions this user has access to
  # @param id the id for the service account to get
  # @param service_account 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_permissions include permissions in return
  # @return [ServiceAccount]
  describe 'update_service_account test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
