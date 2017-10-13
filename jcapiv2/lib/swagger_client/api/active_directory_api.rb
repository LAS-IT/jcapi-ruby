=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module SwaggerClient
  class ActiveDirectoryApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete an Active Directory
    # This endpoint allows you to delete an Active Directory.
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def activedirectories_delete(id, content_type, accept, opts = {})
      activedirectories_delete_with_http_info(id, content_type, accept, opts)
      return nil
    end

    # Delete an Active Directory
    # This endpoint allows you to delete an Active Directory.
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def activedirectories_delete_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.activedirectories_delete ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ActiveDirectoryApi.activedirectories_delete" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_delete" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_delete" if accept.nil?
      # resource path
      local_var_path = "/activedirectories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an Active Directory
    # This endpoint returns a specific Active Directory.
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [ActiveDirectoryOutput]
    def activedirectories_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_get_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Get an Active Directory
    # This endpoint returns a specific Active Directory.
    # @param id ObjectID of this Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ActiveDirectoryOutput, Fixnum, Hash)>] ActiveDirectoryOutput data, response status code and response headers
    def activedirectories_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.activedirectories_get ..."
      end
      # verify the required parameter 'id' is set
      fail ArgumentError, "Missing the required parameter 'id' when calling ActiveDirectoryApi.activedirectories_get" if id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_get" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_get" if accept.nil?
      # resource path
      local_var_path = "/activedirectories/{id}".sub('{format}','json').sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'ActiveDirectoryOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Active Directories
    # 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned.  (default to )
    # @option opts [String] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search (default to )
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @return [Array<ActiveDirectoryOutput>]
    def activedirectories_list(content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List Active Directories
    # 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
    # @option opts [String] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
    # @return [Array<(Array<ActiveDirectoryOutput>, Fixnum, Hash)>] Array<ActiveDirectoryOutput> data, response status code and response headers
    def activedirectories_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.activedirectories_list ..."
      end
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_list" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_list" if accept.nil?
      # resource path
      local_var_path = "/activedirectories".sub('{format}','json')

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'Array<ActiveDirectoryOutput>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a new Active Directory
    # This endpoint allows you to create a new Active Directory.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [ActiveDirectoryInput] :body 
    # @return [ActiveDirectoryOutput]
    def activedirectories_post(content_type, accept, opts = {})
      data, _status_code, _headers = activedirectories_post_with_http_info(content_type, accept, opts)
      return data
    end

    # Create a new Active Directory
    # This endpoint allows you to create a new Active Directory.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [ActiveDirectoryInput] :body 
    # @return [Array<(ActiveDirectoryOutput, Fixnum, Hash)>] ActiveDirectoryOutput data, response status code and response headers
    def activedirectories_post_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.activedirectories_post ..."
      end
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.activedirectories_post" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.activedirectories_post" if accept.nil?
      # resource path
      local_var_path = "/activedirectories".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'ActiveDirectoryOutput')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#activedirectories_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the associations of an Active Directory instance
    # This endpoint returns the direct associations of this Active Directory instance.  A direct association can be a non-homogenous relationship between 2 different objects. For example Active Directory and Users.   #### Sample Request ``` https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/associations?targets=user ```
    # @param activedirectory_id 
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @return [Array<GraphConnection>]
    def graph_active_directory_associations_list(activedirectory_id, targets, content_type, accept, opts = {})
      data, _status_code, _headers = graph_active_directory_associations_list_with_http_info(activedirectory_id, targets, content_type, accept, opts)
      return data
    end

    # List the associations of an Active Directory instance
    # This endpoint returns the direct associations of this Active Directory instance.  A direct association can be a non-homogenous relationship between 2 different objects. For example Active Directory and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/associations?targets&#x3D;user &#x60;&#x60;&#x60;
    # @param activedirectory_id 
    # @param targets 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @return [Array<(Array<GraphConnection>, Fixnum, Hash)>] Array<GraphConnection> data, response status code and response headers
    def graph_active_directory_associations_list_with_http_info(activedirectory_id, targets, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.graph_active_directory_associations_list ..."
      end
      # verify the required parameter 'activedirectory_id' is set
      fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_associations_list" if activedirectory_id.nil?
      # verify the required parameter 'targets' is set
      fail ArgumentError, "Missing the required parameter 'targets' when calling ActiveDirectoryApi.graph_active_directory_associations_list" if targets.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_associations_list" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_associations_list" if accept.nil?
      # resource path
      local_var_path = "/activedirectories/{activedirectory_id}/associations".sub('{format}','json').sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'targets'] = @api_client.build_collection_param(targets, :csv)
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'Array<GraphConnection>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_associations_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Manage the associations of an Active Directory instance
    # This endpoint allows you to manage the _direct_ associations of an Active Directory instance.  A direct association can be a non-homogenous relationship between 2 different objects. For example Active Directory and Users.  #### Sample Request ``` https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/associations ```
    # @param activedirectory_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @return [nil]
    def graph_active_directory_associations_post(activedirectory_id, content_type, accept, opts = {})
      graph_active_directory_associations_post_with_http_info(activedirectory_id, content_type, accept, opts)
      return nil
    end

    # Manage the associations of an Active Directory instance
    # This endpoint allows you to manage the _direct_ associations of an Active Directory instance.  A direct association can be a non-homogenous relationship between 2 different objects. For example Active Directory and Users.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/associations &#x60;&#x60;&#x60;
    # @param activedirectory_id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [GraphManagementReq] :body 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def graph_active_directory_associations_post_with_http_info(activedirectory_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.graph_active_directory_associations_post ..."
      end
      # verify the required parameter 'activedirectory_id' is set
      fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_associations_post" if activedirectory_id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_associations_post" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_associations_post" if accept.nil?
      # resource path
      local_var_path = "/activedirectories/{activedirectory_id}/associations".sub('{format}','json').sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_associations_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List the User Groups associated with an Active Directory instance
    # This endpoint will return User Groups associated with an Active Directory instance. Each element will contain the group's type, id, attributes and paths.  The `attributes` object is a key/value hash of attributes specifically set for this group.  The `paths` array enumerates each path from this Active Directory instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Active Directory instance.  See `/members` and `/associations` endpoints to manage those collections.  #### Sample Request ``` https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/usersgroups ```
    # @param activedirectory_id ObjectID of the Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @return [Array<GraphObjectWithPaths>]
    def graph_active_directory_traverse_user_group(activedirectory_id, content_type, accept, opts = {})
      data, _status_code, _headers = graph_active_directory_traverse_user_group_with_http_info(activedirectory_id, content_type, accept, opts)
      return data
    end

    # List the User Groups associated with an Active Directory instance
    # This endpoint will return User Groups associated with an Active Directory instance. Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this Active Directory instance to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this Active Directory instance.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/activedirectories/{activedirectory_id}/usersgroups &#x60;&#x60;&#x60;
    # @param activedirectory_id ObjectID of the Active Directory instance.
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @return [Array<(Array<GraphObjectWithPaths>, Fixnum, Hash)>] Array<GraphObjectWithPaths> data, response status code and response headers
    def graph_active_directory_traverse_user_group_with_http_info(activedirectory_id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ActiveDirectoryApi.graph_active_directory_traverse_user_group ..."
      end
      # verify the required parameter 'activedirectory_id' is set
      fail ArgumentError, "Missing the required parameter 'activedirectory_id' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group" if activedirectory_id.nil?
      # verify the required parameter 'content_type' is set
      fail ArgumentError, "Missing the required parameter 'content_type' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group" if content_type.nil?
      # verify the required parameter 'accept' is set
      fail ArgumentError, "Missing the required parameter 'accept' when calling ActiveDirectoryApi.graph_active_directory_traverse_user_group" if accept.nil?
      # resource path
      local_var_path = "/activedirectories/{activedirectory_id}/usergroups".sub('{format}','json').sub('{' + 'activedirectory_id' + '}', activedirectory_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
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
        :return_type => 'Array<GraphObjectWithPaths>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ActiveDirectoryApi#graph_active_directory_traverse_user_group\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
