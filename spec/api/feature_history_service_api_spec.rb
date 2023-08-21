=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::FeatureHistoryServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FeatureHistoryServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::FeatureHistoryServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeatureHistoryServiceApi' do
    it 'should create an instance of FeatureHistoryServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::FeatureHistoryServiceApi)
    end
  end

  # unit tests for list_feature_history
  # Gets a paginated list of history of feature value changes
  # @param app_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Array<String>] :feature_keys Allows you to search by keys. If featureIds are provided, keys are ignored
  # @option opts [Array<String>] :feature_ids The ids of the features you want, prefer this over keys as keys can change
  # @option opts [Array<Integer>] :versions If only one feature is requested, you can specify the specific versions you want
  # @option opts [Array<String>] :environment_ids Any environments you want the feature keys/ids from
  # @option opts [Integer] :max This is the max to result, limited by server
  # @option opts [Integer] :start_at what position in the results to start at
  # @return [FeatureHistoryList]
  describe 'list_feature_history test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
