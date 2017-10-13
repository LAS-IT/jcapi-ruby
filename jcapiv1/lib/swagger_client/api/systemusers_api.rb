=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class SystemusersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a system user
    # Delete a particular system user.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Systemuserreturn]
    def systemusers_delete(id, content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_delete_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Delete a system user
    # Delete a particular system user.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Systemuserreturn, Fixnum, Hash)>] Systemuserreturn data, response status code and response headers
    def systemusers_delete_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SystemusersApi.systemusers_delete" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_delete" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_delete" if accept.nil?
      # resource path
      local_var_path = "/systemusers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Systemuserreturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List a system user
    # Get a particular System User.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @return [Systemuser]
    def systemusers_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_get_with_http_info(id, content_type, accept, opts)
      return data
    end

    # List a system user
    # Get a particular System User.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @return [Array<(Systemuser, Fixnum, Hash)>] Systemuser data, response status code and response headers
    def systemusers_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SystemusersApi.systemusers_get" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_get" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_get" if accept.nil?
      # resource path
      local_var_path = "/systemusers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Systemuser')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all system users
    # Returns all systemusers.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to )
    # @option opts [String] :filter  (default to )
    # @return [Systemuserslist]
    def systemusers_list(content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List all system users
    # Returns all systemusers.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [String] :filter 
    # @return [Array<(Systemuserslist, Fixnum, Hash)>] Systemuserslist data, response status code and response headers
    def systemusers_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_list ..."
      end
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_list" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_list" if accept.nil?
      # resource path
      local_var_path = "/systemusers".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Systemuserslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a system user
    # Add new System Users.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserputpost] :body 
    # @return [Systemuserreturn]
    def systemusers_post(content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_post_with_http_info(content_type, accept, opts)
      return data
    end

    # Create a system user
    # Add new System Users.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserputpost] :body 
    # @return [Array<(Systemuserreturn, Fixnum, Hash)>] Systemuserreturn data, response status code and response headers
    def systemusers_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_post ..."
      end
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_post" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_post" if accept.nil?
      # resource path
      local_var_path = "/systemusers".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Systemuserreturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a system user
    # Update a system user record and return the modified record.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserputpost] :body 
    # @return [Systemuserreturn]
    def systemusers_put(id, content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_put_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Update a system user
    # Update a system user record and return the modified record.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserputpost] :body 
    # @return [Array<(Systemuserreturn, Fixnum, Hash)>] Systemuserreturn data, response status code and response headers
    def systemusers_put_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SystemusersApi.systemusers_put" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_put" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_put" if accept.nil?
      # resource path
      local_var_path = "/systemusers/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Systemuserreturn')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List system user binding
    # List system bindings for a specific system user in a system and user binding format.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @return [Object]
    def systemusers_systems_binding_list(id, content_type, accept, opts = {})
      data, _status_code, _headers = systemusers_systems_binding_list_with_http_info(id, content_type, accept, opts)
      return data
    end

    # List system user binding
    # List system bindings for a specific system user in a system and user binding format.
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def systemusers_systems_binding_list_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_systems_binding_list ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SystemusersApi.systemusers_systems_binding_list" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_systems_binding_list" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_systems_binding_list" if accept.nil?
      # resource path
      local_var_path = "/systemusers/{id}/systems".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_systems_binding_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a system user binding
    # Adds or removes a system binding for a user.   This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Usersystembindingsput] :body 
    # @return [nil]
    def systemusers_systems_binding_put(id, content_type, accept, opts = {})
      systemusers_systems_binding_put_with_http_info(id, content_type, accept, opts)
      return nil
    end

    # Update a system user binding
    # Adds or removes a system binding for a user.   This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Usersystembindingsput] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def systemusers_systems_binding_put_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemusersApi.systemusers_systems_binding_put ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling SystemusersApi.systemusers_systems_binding_put" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemusersApi.systemusers_systems_binding_put" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling SystemusersApi.systemusers_systems_binding_put" if accept.nil?
      # resource path
      local_var_path = "/systemusers/{id}/systems".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['x-api-key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemusersApi#systemusers_systems_binding_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
