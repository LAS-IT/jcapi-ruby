=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SystemsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SystemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemsApi' do
    it 'should create an instact of SystemsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SystemsApi)
    end
  end

  # unit tests for graph_system_associations_list
  # List the associations of a System
  # This endpoint returns the _direct_ associations of a System.  A direct association can be a non-homogenous relationship between 2 different objects. for example Systems and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systems/{system_id}/associations?targets&#x3D;user &#x60;&#x60;&#x60;
  # @param system_id ObjectID of the System.
  # @param targets 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_system_associations_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_associations_post
  # Manage associations of a System
  # This endpoint allows you to manage the _direct_ associations of a System.  A direct association can be a non-homogenous relationship between 2 different objects. for example Systems and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systems/{system_id}/associations &#x60;&#x60;&#x60;
  # @param system_id ObjectID of the System.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [GraphManagementReq] :body 
  # @return [nil]
  describe 'graph_system_associations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_member_of
  # List the parent Groups of a System
  # This endpoint returns all the System Groups a System is a member of.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systems/{system_id}/memberof &#x60;&#x60;&#x60;
  # @param system_id ObjectID of the System.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_member_of test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_traverse_policy
  # List the Policies associated with a System
  # This endpoint will return Policies associated with a System. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this System to the corresponding Policy; this array represents all grouping and/or associations that would have to be removed to deprovision the Policy from this System.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  This endpoint is not yet public as we have finish the code.
  # @param system_id ObjectID of the System.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_traverse_policy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_traverse_user
  # List the Users associated with a System
  # This endpoint will return Users associated with a System. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this System to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this System.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systems/{system_id}/users &#x60;&#x60;&#x60;
  # @param system_id ObjectID of the System.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_traverse_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
