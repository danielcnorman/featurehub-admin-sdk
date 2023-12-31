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
  class RolloutStrategyCollectionViolationType
    PERCENTAGE_ADDS_OVER_100_PERCENT = "percentage_adds_over_100_percent".freeze
    BOOLEAN_HAS_NO_VALUE = "boolean_has_no_value".freeze

    def self.all_vars
      @all_vars ||= [PERCENTAGE_ADDS_OVER_100_PERCENT, BOOLEAN_HAS_NO_VALUE].freeze
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
      return value if RolloutStrategyCollectionViolationType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #RolloutStrategyCollectionViolationType"
    end
  end
end
