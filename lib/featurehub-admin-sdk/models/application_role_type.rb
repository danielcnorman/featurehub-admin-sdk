=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module FeaturehubAdminSdk
  class ApplicationRoleType
    EDIT = "FEATURE_EDIT".freeze
    CREATE = "FEATURE_CREATE".freeze
    EDIT_AND_DELETE = "FEATURE_EDIT_AND_DELETE".freeze

    def self.all_vars
      @all_vars ||= [EDIT, CREATE, EDIT_AND_DELETE].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if ApplicationRoleType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #ApplicationRoleType"
    end
  end
end