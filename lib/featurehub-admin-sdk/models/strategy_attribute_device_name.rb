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
  class StrategyAttributeDeviceName
    BROWSER = "browser".freeze
    MOBILE = "mobile".freeze
    DESKTOP = "desktop".freeze
    SERVER = "server".freeze
    WATCH = "watch".freeze
    EMBEDDED = "embedded".freeze

    def self.all_vars
      @all_vars ||= [BROWSER, MOBILE, DESKTOP, SERVER, WATCH, EMBEDDED].freeze
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
      return value if StrategyAttributeDeviceName.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #StrategyAttributeDeviceName"
    end
  end
end