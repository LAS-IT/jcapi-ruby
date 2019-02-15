=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module JCAPIv1
  class SystemsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete a System
    # This endpoint allows you to delete a system. This command will cause the system to uninstall the JumpCloud agent from its self which can can take about a minute. If the system is not connected to JumpCloud the system record will simply be removed.  #### Sample Request ``` curl -X DELETE https://console.jumpcloud.com/api/systems/{SystemID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id  (default to )
    # @return [System]
    def systems_delete(id, content_type, accept, opts = {})
      data, _status_code, _headers = systems_delete_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Delete a System
    # This endpoint allows you to delete a system. This command will cause the system to uninstall the JumpCloud agent from its self which can can take about a minute. If the system is not connected to JumpCloud the system record will simply be removed.  #### Sample Request &#x60;&#x60;&#x60; curl -X DELETE https://console.jumpcloud.com/api/systems/{SystemID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id 
    # @return [Array<(System, Fixnum, Hash)>] System data, response status code and response headers
    def systems_delete_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_delete ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SystemsApi.systems_delete"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_delete"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_delete"
      end
      # resource path
      local_var_path = "/systems/{id}".sub('{' + 'id' + '}', id.to_s)

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
      header_params[:'Date'] = opts[:'date'] if !opts[:'date'].nil?
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        :return_type => 'System')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#systems_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List an individual system
    # This endpoint returns an individual system.  #### Sample Request ``` curl -X GET https://console.jumpcloud.com/api/systems/{SystemID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'    ```
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id  (default to )
    # @return [System]
    def systems_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = systems_get_with_http_info(id, content_type, accept, opts)
      return data
    end

    # List an individual system
    # This endpoint returns an individual system.  #### Sample Request &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/systems/{SystemID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;    &#x60;&#x60;&#x60;
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id 
    # @return [Array<(System, Fixnum, Hash)>] System data, response status code and response headers
    def systems_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SystemsApi.systems_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_get"
      end
      # resource path
      local_var_path = "/systems/{id}".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
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
      header_params[:'Date'] = opts[:'date'] if !opts[:'date'].nil?
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        :return_type => 'System')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#systems_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List All Systems
    # This endpoint returns all Systems.  #### Sample Requests ``` curl -X GET https://console.jumpcloud.com/api/systems \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}'   ```
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [String] :x_org_id  (default to )
    # @option opts [String] :search A nested object containing a string &#x60;searchTerm&#x60; and a list of &#x60;fields&#x60; to search on.
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Systemslist]
    def systems_list(content_type, accept, opts = {})
      data, _status_code, _headers = systems_list_with_http_info(content_type, accept, opts)
      return data
    end

    # List All Systems
    # This endpoint returns all Systems.  #### Sample Requests &#x60;&#x60;&#x60; curl -X GET https://console.jumpcloud.com/api/systems \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39;   &#x60;&#x60;&#x60;
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [String] :x_org_id 
    # @option opts [String] :search A nested object containing a string &#x60;searchTerm&#x60; and a list of &#x60;fields&#x60; to search on.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :filter A filter to apply to the query.
    # @return [Array<(Systemslist, Fixnum, Hash)>] Systemslist data, response status code and response headers
    def systems_list_with_http_info(content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_list ..."
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_list"
      end
      # resource path
      local_var_path = "/systems"

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        :return_type => 'Systemslist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#systems_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a system
    # This endpoint allows you to update a system.  #### Sample Request  ``` curl -X PUT https://console.jumpcloud.com/api/systems/{SystemID} \\   -H 'Accept: application/json' \\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   -d '{  \"displayName\":\"Name_Update\",  \"allowSshPasswordAuthentication\":\"true\",  \"allowSshRootLogin\":\"true\",  \"allowMultiFactorAuthentication\":\"true\",  \"allowPublicKeyAuthentication\":\"false\" }' ```
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemput] :body 
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def systems_put(id, content_type, accept, opts = {})
      systems_put_with_http_info(id, content_type, accept, opts)
      return nil
    end

    # Update a system
    # This endpoint allows you to update a system.  #### Sample Request  &#x60;&#x60;&#x60; curl -X PUT https://console.jumpcloud.com/api/systems/{SystemID} \\   -H &#39;Accept: application/json&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   -d &#39;{  \&quot;displayName\&quot;:\&quot;Name_Update\&quot;,  \&quot;allowSshPasswordAuthentication\&quot;:\&quot;true\&quot;,  \&quot;allowSshRootLogin\&quot;:\&quot;true\&quot;,  \&quot;allowMultiFactorAuthentication\&quot;:\&quot;true\&quot;,  \&quot;allowPublicKeyAuthentication\&quot;:\&quot;false\&quot; }&#39; &#x60;&#x60;&#x60;
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemput] :body 
    # @option opts [String] :date Current date header for the System Context API
    # @option opts [String] :authorization Authorization header for the System Context API
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def systems_put_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SystemsApi.systems_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_put"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_put"
      end
      # resource path
      local_var_path = "/systems/{id}".sub('{' + 'id' + '}', id.to_s)

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
      header_params[:'Date'] = opts[:'date'] if !opts[:'date'].nil?
      header_params[:'Authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        @api_client.config.logger.debug "API called: SystemsApi#systems_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List system user bindings
    # Hidden as Tags is deprecated  List system user bindings for a specific system in a system and user binding format.  This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  #### Sample Request  *List system user bindings for specific system*  ``` curl -X https://console.jumpcloud.com/api/systems/{SystemID}/systemusers\\   -H 'Content-Type: application/json' \\   -H 'x-api-key: {API_KEY}' \\   \" ```
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned.  (default to )
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending.  (default to )
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :x_org_id  (default to )
    # @return [Systemuserbinding]
    def systems_systemusers_binding_list(id, content_type, accept, opts = {})
      data, _status_code, _headers = systems_systemusers_binding_list_with_http_info(id, content_type, accept, opts)
      return data
    end

    # List system user bindings
    # Hidden as Tags is deprecated  List system user bindings for a specific system in a system and user binding format.  This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  #### Sample Request  *List system user bindings for specific system*  &#x60;&#x60;&#x60; curl -X https://console.jumpcloud.com/api/systems/{SystemID}/systemusers\\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;x-api-key: {API_KEY}&#39; \\   \&quot; &#x60;&#x60;&#x60;
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :fields Use a space seperated string of field parameters to include the data in the response. If omitted the default list of fields will be returned. 
    # @option opts [Integer] :limit The number of records to return at once. Limited to 100.
    # @option opts [Integer] :skip The offset into the records to return.
    # @option opts [String] :sort Use space separated sort parameters to sort the collection. Default sort is ascending. Prefix with &#x60;-&#x60; to sort descending. 
    # @option opts [String] :filter A filter to apply to the query.
    # @option opts [String] :x_org_id 
    # @return [Array<(Systemuserbinding, Fixnum, Hash)>] Systemuserbinding data, response status code and response headers
    def systems_systemusers_binding_list_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_systemusers_binding_list ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SystemsApi.systems_systemusers_binding_list"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_systemusers_binding_list"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_systemusers_binding_list"
      end
      # resource path
      local_var_path = "/systems/{id}/systemusers".sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'skip'] = opts[:'skip'] if !opts[:'skip'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'filter'] = opts[:'filter'] if !opts[:'filter'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json; charset=utf-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Content-Type'] = content_type
      header_params[:'Accept'] = accept
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        :return_type => 'Systemuserbinding')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemsApi#systems_systemusers_binding_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a system's or user's binding
    # Hidden as Tags is deprecated  Adds or removes a user binding for a system.  This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  #### Sample Request  *Add (or remove) a system user to (from) a system*  ``` curl \\   -d '{ \"add\": [\"[SYSTEM_USER_ID_TO_ADD_HERE]\"], \"remove\": [\"[SYSTEM_USER_ID_TO_REMOVE_HERE]\"] }' \\   -X PUT \\   -H 'Content-Type: application/json' \\   -H 'Accept: application/json' \\   -H \"x-api-key: [YOUR_API_KEY_HERE]\" \\   \"https://console.jumpcloud.com/api/systems/[SYSTEM_ID_HERE]/systemusers
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserbindingsput] :body 
    # @option opts [String] :x_org_id  (default to )
    # @return [nil]
    def systems_systemusers_binding_put(id, content_type, accept, opts = {})
      systems_systemusers_binding_put_with_http_info(id, content_type, accept, opts)
      return nil
    end

    # Update a system&#39;s or user&#39;s binding
    # Hidden as Tags is deprecated  Adds or removes a user binding for a system.  This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  #### Sample Request  *Add (or remove) a system user to (from) a system*  &#x60;&#x60;&#x60; curl \\   -d &#39;{ \&quot;add\&quot;: [\&quot;[SYSTEM_USER_ID_TO_ADD_HERE]\&quot;], \&quot;remove\&quot;: [\&quot;[SYSTEM_USER_ID_TO_REMOVE_HERE]\&quot;] }&#39; \\   -X PUT \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;Accept: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/systems/[SYSTEM_ID_HERE]/systemusers
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Systemuserbindingsput] :body 
    # @option opts [String] :x_org_id 
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def systems_systemusers_binding_put_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: SystemsApi.systems_systemusers_binding_put ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling SystemsApi.systems_systemusers_binding_put"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling SystemsApi.systems_systemusers_binding_put"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling SystemsApi.systems_systemusers_binding_put"
      end
      # resource path
      local_var_path = "/systems/{id}/systemusers".sub('{' + 'id' + '}', id.to_s)

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
      header_params[:'x-org-id'] = opts[:'x_org_id'] if !opts[:'x_org_id'].nil?

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
        @api_client.config.logger.debug "API called: SystemsApi#systems_systemusers_binding_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
