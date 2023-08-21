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
  class StrategyAttributePlatformName
    LINUX = "linux".freeze
    WINDOWS = "windows".freeze
    MACOS = "macos".freeze
    ANDROID = "android".freeze
    IOS = "ios".freeze

    def self.all_vars
      @all_vars ||= [LINUX, WINDOWS, MACOS, ANDROID, IOS].freeze
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
      return value if StrategyAttributePlatformName.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #StrategyAttributePlatformName"
    end
  end
end