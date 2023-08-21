=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module FeaturehubAdminSdk
  class ServiceAccountServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a new service account
    # @param id [String] the portfolio this service account belongs to
    # @param service_account [ServiceAccount] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [ServiceAccount]
    def create_service_account_in_portfolio(id, service_account, opts = {})
      data, _status_code, _headers = create_service_account_in_portfolio_with_http_info(id, service_account, opts)
      data
    end

    # Add a new service account
    # @param id [String] the portfolio this service account belongs to
    # @param service_account [ServiceAccount] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [Array<(ServiceAccount, Integer, Hash)>] ServiceAccount data, response status code and response headers
    def create_service_account_in_portfolio_with_http_info(id, service_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.create_service_account_in_portfolio ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.create_service_account_in_portfolio"
      end
      # verify the required parameter 'service_account' is set
      if @api_client.config.client_side_validation && service_account.nil?
        fail ArgumentError, "Missing the required parameter 'service_account' when calling ServiceAccountServiceApi.create_service_account_in_portfolio"
      end
      # resource path
      local_var_path = '/mr-api/portfolio/{id}/service-account'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePermissions'] = opts[:'include_permissions'] if !opts[:'include_permissions'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(service_account)

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.create_service_account_in_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#create_service_account_in_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete this service account, cascade removes all permissions
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [Boolean]
    def delete_service_account(id, opts = {})
      data, _status_code, _headers = delete_service_account_with_http_info(id, opts)
      data
    end

    # Delete this service account, cascade removes all permissions
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def delete_service_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.delete_service_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.delete_service_account"
      end
      # resource path
      local_var_path = '/mr-api/service-account/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePermissions'] = opts[:'include_permissions'] if !opts[:'include_permissions'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Boolean'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.delete_service_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#delete_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get service account by id or 'self' if authenticated as this service account
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @option opts [String] :by_application_id 
    # @return [ServiceAccount]
    def get_service_account(id, opts = {})
      data, _status_code, _headers = get_service_account_with_http_info(id, opts)
      data
    end

    # Get service account by id or &#39;self&#39; if authenticated as this service account
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @option opts [String] :by_application_id 
    # @return [Array<(ServiceAccount, Integer, Hash)>] ServiceAccount data, response status code and response headers
    def get_service_account_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.get_service_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.get_service_account"
      end
      # resource path
      local_var_path = '/mr-api/service-account/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePermissions'] = opts[:'include_permissions'] if !opts[:'include_permissions'].nil?
      query_params[:'byApplicationId'] = opts[:'by_application_id'] if !opts[:'by_application_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.get_service_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#get_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Causes a new API Key to be generated. Ensure you confirm this with the user.
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [ResetApiKeyType] :api_key_type Type of the API key
    # @return [ServiceAccount]
    def reset_api_key(id, opts = {})
      data, _status_code, _headers = reset_api_key_with_http_info(id, opts)
      data
    end

    # Causes a new API Key to be generated. Ensure you confirm this with the user.
    # @param id [String] the id for the service account to get
    # @param [Hash] opts the optional parameters
    # @option opts [ResetApiKeyType] :api_key_type Type of the API key
    # @return [Array<(ServiceAccount, Integer, Hash)>] ServiceAccount data, response status code and response headers
    def reset_api_key_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.reset_api_key ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.reset_api_key"
      end
      # resource path
      local_var_path = '/mr-api/service-account/{id}/reset-api-key'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'apiKeyType'] = opts[:'api_key_type'] if !opts[:'api_key_type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.reset_api_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#reset_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of all service accounts this user can see
    # @param id [String] the portfolio this service account belongs to
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @option opts [String] :filter include environments for each account
    # @option opts [String] :application_id Application ID to filter on
    # @option opts [Boolean] :include_sdk_urls Include the SDKs for environments the user has access to
    # @return [Array<ServiceAccount>]
    def search_service_accounts_in_portfolio(id, opts = {})
      data, _status_code, _headers = search_service_accounts_in_portfolio_with_http_info(id, opts)
      data
    end

    # Get list of all service accounts this user can see
    # @param id [String] the portfolio this service account belongs to
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @option opts [String] :filter include environments for each account
    # @option opts [String] :application_id Application ID to filter on
    # @option opts [Boolean] :include_sdk_urls Include the SDKs for environments the user has access to
    # @return [Array<(Array<ServiceAccount>, Integer, Hash)>] Array<ServiceAccount> data, response status code and response headers
    def search_service_accounts_in_portfolio_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.search_service_accounts_in_portfolio ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.search_service_accounts_in_portfolio"
      end
      # resource path
      local_var_path = '/mr-api/portfolio/{id}/service-account'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePermissions'] = opts[:'include_permissions'] if !opts[:'include_permissions'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'applicationId'] = opts[:'application_id'] if !opts[:'application_id'].nil?
      query_params[:'includeSdkUrls'] = opts[:'include_sdk_urls'] if !opts[:'include_sdk_urls'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ServiceAccount>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.search_service_accounts_in_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#search_service_accounts_in_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update this service account, overwiting any attached environment permissions this user has access to
    # @param id [String] the id for the service account to get
    # @param service_account [ServiceAccount] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [ServiceAccount]
    def update_service_account(id, service_account, opts = {})
      data, _status_code, _headers = update_service_account_with_http_info(id, service_account, opts)
      data
    end

    # Update this service account, overwiting any attached environment permissions this user has access to
    # @param id [String] the id for the service account to get
    # @param service_account [ServiceAccount] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_permissions include permissions in return
    # @return [Array<(ServiceAccount, Integer, Hash)>] ServiceAccount data, response status code and response headers
    def update_service_account_with_http_info(id, service_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ServiceAccountServiceApi.update_service_account ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ServiceAccountServiceApi.update_service_account"
      end
      # verify the required parameter 'service_account' is set
      if @api_client.config.client_side_validation && service_account.nil?
        fail ArgumentError, "Missing the required parameter 'service_account' when calling ServiceAccountServiceApi.update_service_account"
      end
      # resource path
      local_var_path = '/mr-api/service-account/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePermissions'] = opts[:'include_permissions'] if !opts[:'include_permissions'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(service_account)

      # return_type
      return_type = opts[:debug_return_type] || 'ServiceAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"ServiceAccountServiceApi.update_service_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ServiceAccountServiceApi#update_service_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
