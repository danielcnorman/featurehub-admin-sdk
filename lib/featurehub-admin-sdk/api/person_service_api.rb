=begin
#ManagementResourceApi

#This describes the API clients use for accessing features. This reflects the API from 1.5.7 onwards.

The version of the OpenAPI document: 1.1.11

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module FeaturehubAdminSdk
  class PersonServiceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create a new person
    # @param create_person_details [CreatePersonDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @return [RegistrationUrl]
    def create_person(create_person_details, opts = {})
      data, _status_code, _headers = create_person_with_http_info(create_person_details, opts)
      data
    end

    # Create a new person
    # @param create_person_details [CreatePersonDetails] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @return [Array<(RegistrationUrl, Integer, Hash)>] RegistrationUrl data, response status code and response headers
    def create_person_with_http_info(create_person_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.create_person ...'
      end
      # verify the required parameter 'create_person_details' is set
      if @api_client.config.client_side_validation && create_person_details.nil?
        fail ArgumentError, "Missing the required parameter 'create_person_details' when calling PersonServiceApi.create_person"
      end
      # resource path
      local_var_path = '/mr-api/person'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeGroups'] = opts[:'include_groups'] if !opts[:'include_groups'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(create_person_details)

      # return_type
      return_type = opts[:debug_return_type] || 'RegistrationUrl'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.create_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#create_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a person
    # @param id [String] The id of the person to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Boolean]
    def delete_person(id, opts = {})
      data, _status_code, _headers = delete_person_with_http_info(id, opts)
      data
    end

    # Delete a person
    # @param id [String] The id of the person to find
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Array<(Boolean, Integer, Hash)>] Boolean data, response status code and response headers
    def delete_person_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.delete_person ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PersonServiceApi.delete_person"
      end
      # resource path
      local_var_path = '/mr-api/person/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeGroups'] = opts[:'include_groups'] if !opts[:'include_groups'].nil?
      query_params[:'includeAcls'] = opts[:'include_acls'] if !opts[:'include_acls'].nil?

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
        :operation => :"PersonServiceApi.delete_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#delete_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def find_people(opts = {})
      data, _status_code, _headers = find_people_with_http_info(opts)
      data
    end

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
    # @return [Array<(SearchPersonResult, Integer, Hash)>] SearchPersonResult data, response status code and response headers
    def find_people_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.find_people ...'
      end
      # resource path
      local_var_path = '/mr-api/person'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeGroups'] = opts[:'include_groups'] if !opts[:'include_groups'].nil?
      query_params[:'countGroups'] = opts[:'count_groups'] if !opts[:'count_groups'].nil?
      query_params[:'order'] = opts[:'order'] if !opts[:'order'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'startAt'] = opts[:'start_at'] if !opts[:'start_at'].nil?
      query_params[:'pageSize'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'includeLastLoggedIn'] = opts[:'include_last_logged_in'] if !opts[:'include_last_logged_in'].nil?
      query_params[:'includeDeactivated'] = opts[:'include_deactivated'] if !opts[:'include_deactivated'].nil?
      query_params[:'personTypes'] = @api_client.build_collection_param(opts[:'person_types'], :multi) if !opts[:'person_types'].nil?
      query_params[:'sortBy'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'SearchPersonResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.find_people",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#find_people\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get person
    # @param id [String] The id of the person to find. Duplicated here as we accept a plain string (not only a uuid)
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Person]
    def get_person(id, opts = {})
      data, _status_code, _headers = get_person_with_http_info(id, opts)
      data
    end

    # Get person
    # @param id [String] The id of the person to find. Duplicated here as we accept a plain string (not only a uuid)
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Array<(Person, Integer, Hash)>] Person data, response status code and response headers
    def get_person_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.get_person ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PersonServiceApi.get_person"
      end
      # resource path
      local_var_path = '/mr-api/person/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeGroups'] = opts[:'include_groups'] if !opts[:'include_groups'].nil?
      query_params[:'includeAcls'] = opts[:'include_acls'] if !opts[:'include_acls'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Person'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.get_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#get_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Reset security token of supported person type (usually service accounts only)
    # @param id [String] The id of the person to find
    # @param [Hash] opts the optional parameters
    # @return [AdminServiceResetTokenResponse]
    def reset_security_token(id, opts = {})
      data, _status_code, _headers = reset_security_token_with_http_info(id, opts)
      data
    end

    # Reset security token of supported person type (usually service accounts only)
    # @param id [String] The id of the person to find
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdminServiceResetTokenResponse, Integer, Hash)>] AdminServiceResetTokenResponse data, response status code and response headers
    def reset_security_token_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.reset_security_token ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PersonServiceApi.reset_security_token"
      end
      # resource path
      local_var_path = '/mr-api/person/{id}/token-reset'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || 'AdminServiceResetTokenResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.reset_security_token",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#reset_security_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a person
    # @param id [String] The id of the person to find
    # @param person [Person] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Person]
    def update_person(id, person, opts = {})
      data, _status_code, _headers = update_person_with_http_info(id, person, opts)
      data
    end

    # Update a person
    # @param id [String] The id of the person to find
    # @param person [Person] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :include_groups Include groups in result
    # @option opts [Boolean] :include_acls include acls for each group
    # @return [Array<(Person, Integer, Hash)>] Person data, response status code and response headers
    def update_person_with_http_info(id, person, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.update_person ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PersonServiceApi.update_person"
      end
      # verify the required parameter 'person' is set
      if @api_client.config.client_side_validation && person.nil?
        fail ArgumentError, "Missing the required parameter 'person' when calling PersonServiceApi.update_person"
      end
      # resource path
      local_var_path = '/mr-api/person/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'includeGroups'] = opts[:'include_groups'] if !opts[:'include_groups'].nil?
      query_params[:'includeAcls'] = opts[:'include_acls'] if !opts[:'include_acls'].nil?

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(person)

      # return_type
      return_type = opts[:debug_return_type] || 'Person'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.update_person",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#update_person\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a person
    # @param id [String] The id of the person to find
    # @param update_person [UpdatePerson] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_person_v2(id, update_person, opts = {})
      update_person_v2_with_http_info(id, update_person, opts)
      nil
    end

    # Update a person
    # @param id [String] The id of the person to find
    # @param update_person [UpdatePerson] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_person_v2_with_http_info(id, update_person, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PersonServiceApi.update_person_v2 ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PersonServiceApi.update_person_v2"
      end
      # verify the required parameter 'update_person' is set
      if @api_client.config.client_side_validation && update_person.nil?
        fail ArgumentError, "Missing the required parameter 'update_person' when calling PersonServiceApi.update_person_v2"
      end
      # resource path
      local_var_path = '/mr-api/person/{id}/v2'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(update_person)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"PersonServiceApi.update_person_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonServiceApi#update_person_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end