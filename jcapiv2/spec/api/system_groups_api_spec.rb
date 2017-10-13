=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The next version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings. The most recent version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::SystemGroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemGroupsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::SystemGroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemGroupsApi' do
    it 'should create an instact of SystemGroupsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::SystemGroupsApi)
    end
  end

  # unit tests for graph_system_group_associations_list
  # List the associations of a System Group
  # This endpoint returns the _direct_ associations of a System Group.  A direct association can be a non-homogenous relationship between 2 different objects. for example System Groups and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/associations?targets&#x3D;user &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param targets 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_system_group_associations_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_associations_post
  # Manage the associations of a System Group
  # This endpoint allows you to manage the _direct_ associations of a System Group.  A direct association can be a non-homogenous relationship between 2 different objects. for example System Groups and Users.   #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/associations &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [SystemGroupGraphManagementReq] :body 
  # @return [nil]
  describe 'graph_system_group_associations_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_member_of
  # List the System Group&#39;s parents
  # This endpoint returns all System Groups a System Group is a member of.  This endpoint is not yet public as we haven&#39;t completed the code yet.
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_group_member_of test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_members_list
  # List the members of a System Group
  # This endpoint returns the system members of a System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/members &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphConnection>]
  describe 'graph_system_group_members_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_members_post
  # Manage the members of a System Group
  # This endpoint allows you to manage the system members of a System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/members &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [SystemGroupMembersReq] :body 
  # @return [nil]
  describe 'graph_system_group_members_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_membership
  # List the System Group&#39;s membership
  # This endpoint returns all Systems that are a member of this System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/membership &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_group_membership test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_traverse_policy
  # List the Policies associated with a System Group
  # This endpoint will return Policies associated with a System Group. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this System Group to the corresponding Policy; this array represents all grouping and/or associations that would have to be removed to deprovision the Policy from this System Group.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  This endpoint is not public yet as we haven&#39;t finished the code.
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_group_traverse_policy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_traverse_user
  # List the Users associated with a System Group
  # This endpoint will return Users associated with a System Group. Each element will contain the type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this System Group to the corresponding User; this array represents all grouping and/or associations that would have to be removed to deprovision the User from this System Group.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/users &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_group_traverse_user test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for graph_system_group_traverse_user_group
  # List the User Groups associated with a System Group
  # This endpoint will return User Groups associated with a System Group. Each element will contain the group&#39;s type, id, attributes and paths.  The &#x60;attributes&#x60; object is a key/value hash of attributes specifically set for this group.  The &#x60;paths&#x60; array enumerates each path from this System Group to the corresponding User Group; this array represents all grouping and/or associations that would have to be removed to deprovision the User Group from this System Group.  See &#x60;/members&#x60; and &#x60;/associations&#x60; endpoints to manage those collections.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{group_id}/usergroups &#x60;&#x60;&#x60;
  # @param group_id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @return [Array<GraphObjectWithPaths>]
  describe 'graph_system_group_traverse_user_group test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_delete
  # Delete a System Group
  # This endpoint allows you to delete a System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{id} &#x60;&#x60;&#x60;
  # @param id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'groups_system_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_get
  # View an individual System Group details
  # This endpoint returns the details of a System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{id} &#x60;&#x60;&#x60;
  # @param id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @return [SystemGroup]
  describe 'groups_system_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_list
  # List all System Groups
  # This endpoint returns all System Groups.  Available filter fields:   - &#x60;name&#x60;   - &#x60;disabled&#x60;   - &#x60;type&#x60;  #### Sample Request  &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  # @option opts [String] :filter Supported operators are: eq, ne, gt, ge, lt, le, between, search
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @return [Array<SystemGroup>]
  describe 'groups_system_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_patch
  # Partial update a System Group
  # We have hidden PATCH on the systemgroups and usergroups for now; we don&#39;t have that implemented correctly yet, people should use PUT until we do a true PATCH operation.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{id} &#x60;&#x60;&#x60;
  # @param id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [SystemGroupData] :body 
  # @return [SystemGroup]
  describe 'groups_system_patch test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_post
  # Create a new System Group
  # This endpoint allows you to create a new System Group.  #### Sample Request  &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups &#x60;&#x60;&#x60;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [SystemGroupData] :body 
  # @return [SystemGroup]
  describe 'groups_system_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_system_put
  # Update a System Group
  # This enpoint allows you to do a full update of the System Group.  #### Sample Request &#x60;&#x60;&#x60; https://console.jumpcloud.com/api/v2/systemgroups/{id} &#x60;&#x60;&#x60;
  # @param id ObjectID of the System Group.
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [SystemGroupData] :body 
  # @return [SystemGroup]
  describe 'groups_system_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
