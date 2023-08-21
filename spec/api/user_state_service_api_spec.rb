=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::UserStateServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserStateServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::UserStateServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserStateServiceApi' do
    it 'should create an instance of UserStateServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::UserStateServiceApi)
    end
  end

  # unit tests for get_hidden_environments
  # Gets information on which environments are hidden for this user
  # @param app_id 
  # @param [Hash] opts the optional parameters
  # @return [HiddenEnvironments]
  describe 'get_hidden_environments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for save_hidden_environments
  # Saves information on which environments should be hidden for this user
  # @param app_id 
  # @param hidden_environments 
  # @param [Hash] opts the optional parameters
  # @return [HiddenEnvironments]
  describe 'save_hidden_environments test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
