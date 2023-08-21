=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module FeaturehubAdminSdk
  class FeatureGroupServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get feature groups for this application
    # @param app_id [String] The id of the application to find
    # @param feature_group_create [FeatureGroupCreate] 
    # @param [Hash] opts the optional parameters
    # @return [FeatureGroupListGroup]
    def create_feature_group(app_id, feature_group_create, opts = {})
      data, _status_code, _headers = create_feature_group_with_http_info(app_id, feature_group_create, opts)
      data
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application to find
    # @param feature_group_create [FeatureGroupCreate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureGroupListGroup, Integer, Hash)>] FeatureGroupListGroup data, response status code and response headers
    def create_feature_group_with_http_info(app_id, feature_group_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.create_feature_group ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.create_feature_group"
      end
      # verify the required parameter 'feature_group_create' is set
      if @api_client.config.client_side_validation && feature_group_create.nil?
        fail ArgumentError, "Missing the required parameter 'feature_group_create' when calling FeatureGroupServiceApi.create_feature_group"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(feature_group_create)

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureGroupListGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.create_feature_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#create_feature_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete this feature group
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_feature_group(app_id, fg_id, opts = {})
      delete_feature_group_with_http_info(app_id, fg_id, opts)
      nil
    end

    # Delete this feature group
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_feature_group_with_http_info(app_id, fg_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.delete_feature_group ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.delete_feature_group"
      end
      # verify the required parameter 'fg_id' is set
      if @api_client.config.client_side_validation && fg_id.nil?
        fail ArgumentError, "Missing the required parameter 'fg_id' when calling FeatureGroupServiceApi.delete_feature_group"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups/{fgId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'fgId' + '}', CGI.escape(fg_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.delete_feature_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#delete_feature_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [FeatureGroup]
    def get_feature_group(app_id, fg_id, opts = {})
      data, _status_code, _headers = get_feature_group_with_http_info(app_id, fg_id, opts)
      data
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureGroup, Integer, Hash)>] FeatureGroup data, response status code and response headers
    def get_feature_group_with_http_info(app_id, fg_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.get_feature_group ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.get_feature_group"
      end
      # verify the required parameter 'fg_id' is set
      if @api_client.config.client_side_validation && fg_id.nil?
        fail ArgumentError, "Missing the required parameter 'fg_id' when calling FeatureGroupServiceApi.get_feature_group"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups/{fgId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'fgId' + '}', CGI.escape(fg_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.get_feature_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#get_feature_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param env_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [Array<FeatureGroupFeature>]
    def get_feature_group_features(app_id, env_id, opts = {})
      data, _status_code, _headers = get_feature_group_features_with_http_info(app_id, env_id, opts)
      data
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param env_id [String] The id of the feature group
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<FeatureGroupFeature>, Integer, Hash)>] Array<FeatureGroupFeature> data, response status code and response headers
    def get_feature_group_features_with_http_info(app_id, env_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.get_feature_group_features ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.get_feature_group_features"
      end
      # verify the required parameter 'env_id' is set
      if @api_client.config.client_side_validation && env_id.nil?
        fail ArgumentError, "Missing the required parameter 'env_id' when calling FeatureGroupServiceApi.get_feature_group_features"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups/environment/{envId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'envId' + '}', CGI.escape(env_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<FeatureGroupFeature>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.get_feature_group_features",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#get_feature_group_features\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application to find
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A filter to apply to the features - partial match of key or description
    # @option opts [Integer] :max The maximum number of features to get for this page
    # @option opts [Integer] :page The page number of the results. 0 indexed.
    # @option opts [SortOrder] :sort_order 
    # @option opts [String] :environment_id Match based on environment id
    # @return [FeatureGroupList]
    def list_feature_groups(app_id, opts = {})
      data, _status_code, _headers = list_feature_groups_with_http_info(app_id, opts)
      data
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application to find
    # @param [Hash] opts the optional parameters
    # @option opts [String] :filter A filter to apply to the features - partial match of key or description
    # @option opts [Integer] :max The maximum number of features to get for this page
    # @option opts [Integer] :page The page number of the results. 0 indexed.
    # @option opts [SortOrder] :sort_order 
    # @option opts [String] :environment_id Match based on environment id
    # @return [Array<(FeatureGroupList, Integer, Hash)>] FeatureGroupList data, response status code and response headers
    def list_feature_groups_with_http_info(app_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.list_feature_groups ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.list_feature_groups"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'max'] = opts[:'max'] if !opts[:'max'].nil?
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'sortOrder'] = opts[:'sort_order'] if !opts[:'sort_order'].nil?
      query_params[:'environmentId'] = opts[:'environment_id'] if !opts[:'environment_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureGroupList'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.list_feature_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#list_feature_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param feature_group_update [FeatureGroupUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [FeatureGroup]
    def update_feature_group(app_id, fg_id, feature_group_update, opts = {})
      data, _status_code, _headers = update_feature_group_with_http_info(app_id, fg_id, feature_group_update, opts)
      data
    end

    # Get feature groups for this application
    # @param app_id [String] The id of the application
    # @param fg_id [String] The id of the feature group
    # @param feature_group_update [FeatureGroupUpdate] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(FeatureGroup, Integer, Hash)>] FeatureGroup data, response status code and response headers
    def update_feature_group_with_http_info(app_id, fg_id, feature_group_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FeatureGroupServiceApi.update_feature_group ...'
      end
      # verify the required parameter 'app_id' is set
      if @api_client.config.client_side_validation && app_id.nil?
        fail ArgumentError, "Missing the required parameter 'app_id' when calling FeatureGroupServiceApi.update_feature_group"
      end
      # verify the required parameter 'fg_id' is set
      if @api_client.config.client_side_validation && fg_id.nil?
        fail ArgumentError, "Missing the required parameter 'fg_id' when calling FeatureGroupServiceApi.update_feature_group"
      end
      # verify the required parameter 'feature_group_update' is set
      if @api_client.config.client_side_validation && feature_group_update.nil?
        fail ArgumentError, "Missing the required parameter 'feature_group_update' when calling FeatureGroupServiceApi.update_feature_group"
      end
      # resource path
      local_var_path = '/mr-api/application/{appId}/feature-groups/{fgId}'.sub('{' + 'appId' + '}', CGI.escape(app_id.to_s)).sub('{' + 'fgId' + '}', CGI.escape(fg_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(feature_group_update)

      # return_type
      return_type = opts[:debug_return_type] || 'FeatureGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"FeatureGroupServiceApi.update_feature_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FeatureGroupServiceApi#update_feature_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end