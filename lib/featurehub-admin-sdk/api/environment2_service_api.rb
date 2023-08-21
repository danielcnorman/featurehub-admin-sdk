=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module FeaturehubAdminSdk
  class Environment2ServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Update an environment
    # @param eid [String] The id of the environment to find
    # @param update_environment [UpdateEnvironment] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_acls Include the acls attached to this environment
    # @option opts [Boolean] :include_features Include the features attached to this environment
    # @option opts [Boolean] :include_details Include all environment details
    # @return [Environment]
    def update_environment_v2(eid, update_environment, opts = {})
      data, _status_code, _headers = update_environment_v2_with_http_info(eid, update_environment, opts)
      data
    end

    # Update an environment
    # @param eid [String] The id of the environment to find
    # @param update_environment [UpdateEnvironment] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_acls Include the acls attached to this environment
    # @option opts [Boolean] :include_features Include the features attached to this environment
    # @option opts [Boolean] :include_details Include all environment details
    # @return [Array<(Environment, Integer, Hash)>] Environment data, response status code and response headers
    def update_environment_v2_with_http_info(eid, update_environment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: Environment2ServiceApi.update_environment_v2 ...'
      end
      # verify the required parameter 'eid' is set
      if @api_client.config.client_side_validation && eid.nil?
        fail ArgumentError, "Missing the required parameter 'eid' when calling Environment2ServiceApi.update_environment_v2"
      end
      # verify the required parameter 'update_environment' is set
      if @api_client.config.client_side_validation && update_environment.nil?
        fail ArgumentError, "Missing the required parameter 'update_environment' when calling Environment2ServiceApi.update_environment_v2"
      end
      # resource path
      local_var_path = '/mr-api/environment/{eid}/v2'.sub('{' + 'eid' + '}', CGI.escape(eid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeAcls'] = opts[:'include_acls'] if !opts[:'include_acls'].nil?
      query_params[:'includeFeatures'] = opts[:'include_features'] if !opts[:'include_features'].nil?
      query_params[:'includeDetails'] = opts[:'include_details'] if !opts[:'include_details'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_environment)

      # return_type
      return_type = opts[:debug_return_type] || 'Environment'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"Environment2ServiceApi.update_environment_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: Environment2ServiceApi#update_environment_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end