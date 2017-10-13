=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SambaDomainsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SambaDomainsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SambaDomainsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SambaDomainsApi' do
    it 'should create an instact of SambaDomainsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SambaDomainsApi)
    end
  end

  # unit tests for ldapservers_samba_domains_delete
  # Delete Samba Domain
  # This endpoint allows you to delete a samba domain from an LDAP server.
  # @param ldapserver_id Unique identifier o f the LDAP server.
  # @param id Unique identifier of the samba domain.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type 
  # @option opts [String] :accept 
  # @return [String]
  describe 'ldapservers_samba_domains_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ldapservers_samba_domains_get
  # Get Samba Domain
  # This endpoint returns a specific samba domain for an LDAP server.
  # @param ldapserver_id Unique identifier o f the LDAP server.
  # @param id Unique identifier of the samba domain.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type 
  # @option opts [String] :accept 
  # @return [SambaDomainOutput]
  describe 'ldapservers_samba_domains_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ldapservers_samba_domains_list
  # List Samba Domains
  # This endpoint returns all samba domains for an LDAP server.
  # @param ldapserver_id Unique identifier of the LDAP server.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :content_type 
  # @option opts [String] :accept 
  # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  # @option opts [String] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @return [Array<SambaDomainOutput>]
  describe 'ldapservers_samba_domains_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ldapservers_samba_domains_post
  # Create Samba Domain
  # This endpoint allows you to create a samba domain for an LDAP server.
  # @param ldapserver_id Unique identifier of the LDAP server.
  # @param [Hash] opts the optional parameters
  # @option opts [SambaDomainInput] :body 
  # @option opts [String] :content_type 
  # @option opts [String] :accept 
  # @return [SambaDomainOutput]
  describe 'ldapservers_samba_domains_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for ldapservers_samba_domains_put
  # Update Samba Domain
  # This endpoint allows you to update the samba domain information for an LDAP server.
  # @param ldapserver_id Unique identifier o f the LDAP server.
  # @param id Unique identifier of the samba domain.
  # @param [Hash] opts the optional parameters
  # @option opts [SambaDomainInput] :body 
  # @option opts [String] :content_type 
  # @option opts [String] :accept 
  # @return [SambaDomainOutput]
  describe 'ldapservers_samba_domains_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
