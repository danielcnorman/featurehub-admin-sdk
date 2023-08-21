=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::Environment2ServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Environment2ServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::Environment2ServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Environment2ServiceApi' do
    it 'should create an instance of Environment2ServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::Environment2ServiceApi)
    end
  end

  # unit tests for update_environment_v2
  # Update an environment
  # @param eid The id of the environment to find
  # @param update_environment 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_acls Include the acls attached to this environment
  # @option opts [Boolean] :include_features Include the features attached to this environment
  # @option opts [Boolean] :include_details Include all environment details
  # @return [Environment]
  describe 'update_environment_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
