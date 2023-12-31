=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::AuthServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::AuthServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthServiceApi' do
    it 'should create an instance of AuthServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::AuthServiceApi)
    end
  end

  # unit tests for change_password
  # Change password
  # @param id The id of the person to change password for
  # @param password_update 
  # @param [Hash] opts the optional parameters
  # @return [Person]
  describe 'change_password test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_login_url_for_provider
  # Gets a login URL for this specified provider if it is supported by the server
  # @param provider 
  # @param [Hash] opts the optional parameters
  # @return [ProviderRedirect]
  describe 'get_login_url_for_provider test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for login
  # Login to Feature Hub
  # @param user_credentials 
  # @param [Hash] opts the optional parameters
  # @return [TokenizedPerson]
  describe 'login test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for logout
  # Get person by token
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'logout test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for person_by_token
  # Get person by token
  # @param token 
  # @param [Hash] opts the optional parameters
  # @return [Person]
  describe 'person_by_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for register_person
  # Create a new user
  # @param person_registration_details 
  # @param [Hash] opts the optional parameters
  # @return [TokenizedPerson]
  describe 'register_person test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for replace_temp_password
  # Replace temporary password
  # @param id The id of the person to replace temporary password for
  # @param password_reset 
  # @param [Hash] opts the optional parameters
  # @return [TokenizedPerson]
  describe 'replace_temp_password test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_expired_token
  # Allows an administrator to reset a user&#39;s expired token so they can login
  # @param email The email address of the person whose expired token to reset
  # @param [Hash] opts the optional parameters
  # @return [RegistrationUrl]
  describe 'reset_expired_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_password
  # Reset password
  # @param id The id of the person to reset password for
  # @param password_reset 
  # @param [Hash] opts the optional parameters
  # @return [Person]
  describe 'reset_password test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
