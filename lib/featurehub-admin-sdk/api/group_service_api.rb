=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module FeaturehubAdminSdk
  class GroupServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add a person to a group
    # @param gid [String] The id of the group to find
    # @param p_id [String] The id of the person to add/delete
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @return [Group]
    def add_person_to_group(gid, p_id, opts = {})
      data, _status_code, _headers = add_person_to_group_with_http_info(gid, p_id, opts)
      data
    end

    # Add a person to a group
    # @param gid [String] The id of the group to find
    # @param p_id [String] The id of the person to add/delete
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def add_person_to_group_with_http_info(gid, p_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.add_person_to_group ...'
      end
      # verify the required parameter 'gid' is set
      if @api_client.config.client_side_validation && gid.nil?
        fail ArgumentError, "Missing the required parameter 'gid' when calling GroupServiceApi.add_person_to_group"
      end
      # verify the required parameter 'p_id' is set
      if @api_client.config.client_side_validation && p_id.nil?
        fail ArgumentError, "Missing the required parameter 'p_id' when calling GroupServiceApi.add_person_to_group"
      end
      # resource path
      local_var_path = '/mr-api/group/{gid}/person/{pId}'.sub('{' + 'gid' + '}', CGI.escape(gid.to_s)).sub('{' + 'pId' + '}', CGI.escape(p_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.add_person_to_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#add_person_to_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new group
    # @param id [String] The id of the portfolio to find
    # @param group [Group] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_people include people in each group
    # @return [Group]
    def create_group(id, group, opts = {})
      data, _status_code, _headers = create_group_with_http_info(id, group, opts)
      data
    end

    # Create a new group
    # @param id [String] The id of the portfolio to find
    # @param group [Group] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_people include people in each group
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def create_group_with_http_info(id, group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.create_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GroupServiceApi.create_group"
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupServiceApi.create_group"
      end
      # resource path
      local_var_path = '/mr-api/portfolio/{id}/group'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePeople'] = opts[:'include_people'] if !opts[:'include_people'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group)

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.create_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#create_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a group
    # @param gid [String] The id of the group to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @return [Boolean]
    def delete_group(gid, opts = {})
      data, _status_code, _headers = delete_group_with_http_info(gid, opts)
      data
    end

    # Delete a group
    # @param gid [String] The id of the group to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def delete_group_with_http_info(gid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.delete_group ...'
      end
      # verify the required parameter 'gid' is set
      if @api_client.config.client_side_validation && gid.nil?
        fail ArgumentError, "Missing the required parameter 'gid' when calling GroupServiceApi.delete_group"
      end
      # resource path
      local_var_path = '/mr-api/group/{gid}'.sub('{' + 'gid' + '}', CGI.escape(gid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?
      query_params[:'includeGroupRoles'] = opts[:'include_group_roles'] if !opts[:'include_group_roles'].nil?

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
        :operation => :"GroupServiceApi.delete_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#delete_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove a person from a group
    # @param gid [String] The id of the group to find
    # @param p_id [String] The id of the person to add/delete
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @return [Group]
    def delete_person_from_group(gid, p_id, opts = {})
      data, _status_code, _headers = delete_person_from_group_with_http_info(gid, p_id, opts)
      data
    end

    # Remove a person from a group
    # @param gid [String] The id of the group to find
    # @param p_id [String] The id of the person to add/delete
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def delete_person_from_group_with_http_info(gid, p_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.delete_person_from_group ...'
      end
      # verify the required parameter 'gid' is set
      if @api_client.config.client_side_validation && gid.nil?
        fail ArgumentError, "Missing the required parameter 'gid' when calling GroupServiceApi.delete_person_from_group"
      end
      # verify the required parameter 'p_id' is set
      if @api_client.config.client_side_validation && p_id.nil?
        fail ArgumentError, "Missing the required parameter 'p_id' when calling GroupServiceApi.delete_person_from_group"
      end
      # resource path
      local_var_path = '/mr-api/group/{gid}/person/{pId}'.sub('{' + 'gid' + '}', CGI.escape(gid.to_s)).sub('{' + 'pId' + '}', CGI.escape(p_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.delete_person_from_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#delete_person_from_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets a list of groups.
    # @param id [String] The id of the portfolio to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_people include people in each group
    # @option opts [SortOrder] :order how to order the results
    # @option opts [String] :filter What to filter the results by
    # @return [Array<Group>]
    def find_groups(id, opts = {})
      data, _status_code, _headers = find_groups_with_http_info(id, opts)
      data
    end

    # Gets a list of groups.
    # @param id [String] The id of the portfolio to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_people include people in each group
    # @option opts [SortOrder] :order how to order the results
    # @option opts [String] :filter What to filter the results by
    # @return [Array<(Array<Group>, Integer, Hash)>] Array<Group> data, response status code and response headers
    def find_groups_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.find_groups ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GroupServiceApi.find_groups"
      end
      # resource path
      local_var_path = '/mr-api/portfolio/{id}/group'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includePeople'] = opts[:'include_people'] if !opts[:'include_people'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Group>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.find_groups",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#find_groups\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get group
    # @param gid [String] The id of the group to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @option opts [String] :by_application_id 
    # @return [Group]
    def get_group(gid, opts = {})
      data, _status_code, _headers = get_group_with_http_info(gid, opts)
      data
    end

    # Get group
    # @param gid [String] The id of the group to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @option opts [String] :by_application_id 
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def get_group_with_http_info(gid, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.get_group ...'
      end
      # verify the required parameter 'gid' is set
      if @api_client.config.client_side_validation && gid.nil?
        fail ArgumentError, "Missing the required parameter 'gid' when calling GroupServiceApi.get_group"
      end
      # resource path
      local_var_path = '/mr-api/group/{gid}'.sub('{' + 'gid' + '}', CGI.escape(gid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?
      query_params[:'includeGroupRoles'] = opts[:'include_group_roles'] if !opts[:'include_group_roles'].nil?
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
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.get_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#get_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Gets the superuser group for this organisation. There is no other way to ascertain which org you are dealing with
    # @param id [String] the id of the organisation
    # @param [Hash] opts the optional parameters
    # @return [Group]
    def get_superuser_group(id, opts = {})
      data, _status_code, _headers = get_superuser_group_with_http_info(id, opts)
      data
    end

    # Gets the superuser group for this organisation. There is no other way to ascertain which org you are dealing with
    # @param id [String] the id of the organisation
    # @param [Hash] opts the optional parameters
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def get_superuser_group_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.get_superuser_group ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling GroupServiceApi.get_superuser_group"
      end
      # resource path
      local_var_path = '/mr-api/organization/{id}/group'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.get_superuser_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#get_superuser_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a group
    # @param gid [String] The id of the group to find
    # @param group [Group] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @option opts [Boolean] :update_members update members, deleting those that are not passed
    # @option opts [Boolean] :update_environment_group_roles update environment group roles, deleting any not passed
    # @option opts [Boolean] :update_application_group_roles update application group roles, deleting any not passed
    # @option opts [String] :application_id if updating the application group roles, and the application id is passed, then the changes are limited to that application
    # @return [Group]
    def update_group(gid, group, opts = {})
      data, _status_code, _headers = update_group_with_http_info(gid, group, opts)
      data
    end

    # Update a group
    # @param gid [String] The id of the group to find
    # @param group [Group] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_members include people in each group
    # @option opts [Boolean] :include_group_roles include environment and application roles in each group
    # @option opts [Boolean] :update_members update members, deleting those that are not passed
    # @option opts [Boolean] :update_environment_group_roles update environment group roles, deleting any not passed
    # @option opts [Boolean] :update_application_group_roles update application group roles, deleting any not passed
    # @option opts [String] :application_id if updating the application group roles, and the application id is passed, then the changes are limited to that application
    # @return [Array<(Group, Integer, Hash)>] Group data, response status code and response headers
    def update_group_with_http_info(gid, group, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GroupServiceApi.update_group ...'
      end
      # verify the required parameter 'gid' is set
      if @api_client.config.client_side_validation && gid.nil?
        fail ArgumentError, "Missing the required parameter 'gid' when calling GroupServiceApi.update_group"
      end
      # verify the required parameter 'group' is set
      if @api_client.config.client_side_validation && group.nil?
        fail ArgumentError, "Missing the required parameter 'group' when calling GroupServiceApi.update_group"
      end
      # resource path
      local_var_path = '/mr-api/group/{gid}'.sub('{' + 'gid' + '}', CGI.escape(gid.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeMembers'] = opts[:'include_members'] if !opts[:'include_members'].nil?
      query_params[:'includeGroupRoles'] = opts[:'include_group_roles'] if !opts[:'include_group_roles'].nil?
      query_params[:'updateMembers'] = opts[:'update_members'] if !opts[:'update_members'].nil?
      query_params[:'updateEnvironmentGroupRoles'] = opts[:'update_environment_group_roles'] if !opts[:'update_environment_group_roles'].nil?
      query_params[:'updateApplicationGroupRoles'] = opts[:'update_application_group_roles'] if !opts[:'update_application_group_roles'].nil?
      query_params[:'applicationId'] = opts[:'application_id'] if !opts[:'application_id'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(group)

      # return_type
      return_type = opts[:debug_return_type] || 'Group'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"GroupServiceApi.update_group",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GroupServiceApi#update_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
