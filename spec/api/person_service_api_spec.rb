=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for FeaturehubAdminSdk::PersonServiceApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PersonServiceApi' do
  before do
    # run before each test
    @api_instance = FeaturehubAdminSdk::PersonServiceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PersonServiceApi' do
    it 'should create an instance of PersonServiceApi' do
      expect(@api_instance).to be_instance_of(FeaturehubAdminSdk::PersonServiceApi)
    end
  end

  # unit tests for create_person
  # Create a new person
  # @param create_person_details 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_groups Include groups in result
  # @return [RegistrationUrl]
  describe 'create_person test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_person
  # Delete a person
  # @param id The id of the person to find
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_groups Include groups in result
  # @option opts [Boolean] :include_acls include acls for each group
  # @return [Boolean]
  describe 'delete_person test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for find_people
  # Gets a list of matching people.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_groups Include groups in result
  # @option opts [Boolean] :count_groups Return the number of groups
  # @option opts [SortOrder] :order how to order the results
  # @option opts [String] :filter What to filter the results by
  # @option opts [Integer] :start_at Where in the results to start
  # @option opts [Integer] :page_size How many results to return
  # @option opts [Boolean] :include_last_logged_in Include last logged in timestamp
  # @option opts [Boolean] :include_deactivated Include people who are no longer active
  # @option opts [Array<PersonType>] :person_types Filter by person types
  # @option opts [SearchPersonSortBy] :sort_by 
  # @return [SearchPersonResult]
  describe 'find_people test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_person
  # Get person
  # @param id The id of the person to find. Duplicated here as we accept a plain string (not only a uuid)
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_groups Include groups in result
  # @option opts [Boolean] :include_acls include acls for each group
  # @return [Person]
  describe 'get_person test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for reset_security_token
  # Reset security token of supported person type (usually service accounts only)
  # @param id The id of the person to find
  # @param [Hash] opts the optional parameters
  # @return [AdminServiceResetTokenResponse]
  describe 'reset_security_token test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_person
  # Update a person
  # @param id The id of the person to find
  # @param person 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_groups Include groups in result
  # @option opts [Boolean] :include_acls include acls for each group
  # @return [Person]
  describe 'update_person test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_person_v2
  # Update a person
  # @param id The id of the person to find
  # @param update_person 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_person_v2 test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end