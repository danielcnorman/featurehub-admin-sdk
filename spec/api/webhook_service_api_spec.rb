=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::WebhookServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'WebhookServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::WebhookServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WebhookServiceApi' do
    it 'should create an instance of WebhookServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::WebhookServiceApi)
    end
  end

  # unit tests for get_webhook_details
  # Gets a specific webhook to show its details based on whats allowed
  # @param env_id 
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [WebhookDetail]
  describe 'get_webhook_details test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_webhook_types
  # Gets a list of well known webhook types
  # @param [Hash] opts the optional parameters
  # @return [WebhookTypeDetails]
  describe 'get_webhook_types test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_webhooks
  # Provides a pagination API for listing webhooks for a specific environment
  # @param env_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :max where to start
  # @option opts [Integer] :start_at what position in the results to start at
  # @option opts [String] :filter what types of webhooks to look for
  # @return [WebhookSummary]
  describe 'list_webhooks test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for test_webhook
  # Send a ping webhook to see if everything is working
  # @param webhook_check 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'test_webhook test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
