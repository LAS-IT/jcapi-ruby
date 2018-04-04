=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0-SNAPSHOT

=end

require "uri"

module JCAPIv2
  class BulkJobRequestsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get Job
    # Under development
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [JobDetails]
    def job_get(id, content_type, accept, opts = {})
      data, _status_code, _headers = job_get_with_http_info(id, content_type, accept, opts)
      return data
    end

    # Get Job
    # Under development
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @return [Array<(JobDetails, Fixnum, Hash)>] JobDetails data, response status code and response headers
    def job_get_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkJobRequestsApi.job_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BulkJobRequestsApi.job_get"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling BulkJobRequestsApi.job_get"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling BulkJobRequestsApi.job_get"
      end
      # resource path
      local_var_path = "/jobs/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'JobDetails')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkJobRequestsApi#job_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Job Results
    # Under development
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once. (default to 10)
    # @option opts [Integer] :skip The offset into the records to return. (default to 0)
    # @return [Array<JobWorkresult>]
    def job_results(id, content_type, accept, opts = {})
      data, _status_code, _headers = job_results_with_http_info(id, content_type, accept, opts)
      return data
    end

    # List Job Results
    # Under development
    # @param id 
    # @param content_type 
    # @param accept 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit The number of records to return at once.
    # @option opts [Integer] :skip The offset into the records to return.
    # @return [Array<(Array<JobWorkresult>, Fixnum, Hash)>] Array<JobWorkresult> data, response status code and response headers
    def job_results_with_http_info(id, content_type, accept, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BulkJobRequestsApi.job_results ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling BulkJobRequestsApi.job_results"
      end
      # verify the required parameter 'content_type' is set
      if @api_client.config.client_side_validation && content_type.nil?
        fail ArgumentError, "Missing the required parameter 'content_type' when calling BulkJobRequestsApi.job_results"
      end
      # verify the required parameter 'accept' is set
      if @api_client.config.client_side_validation && accept.nil?
        fail ArgumentError, "Missing the required parameter 'accept' when calling BulkJobRequestsApi.job_results"
      end
      # resource path
      local_var_path = "/jobs/{id}/results".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Array<JobWorkresult>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BulkJobRequestsApi#job_results\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
