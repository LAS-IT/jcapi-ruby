=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for JCAPIv1::SystemusersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SystemusersApi' do
  before do
    # run before each test
    @instance = JCAPIv1::SystemusersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SystemusersApi' do
    it 'should create an instance of SystemusersApi' do
      expect(@instance).to be_instance_of(JCAPIv1::SystemusersApi)
    end
  end

  # unit tests for systemusers_delete
  # Delete a system user
  # Delete a particular system user.
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @return [Systemuserreturn]
  describe 'systemusers_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_get
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
  # @return [Systemuser]
  describe 'systemusers_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_list
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
  # @return [Systemuserslist]
  describe 'systemusers_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_post
  # Create a system user
  # Create a new system user.  ### Example  #### Create a system user  This example assumes there is already a Tag named \&quot;admins\&quot; in your JumpCloud account.  &#x60;&#x60;&#x60; curl \\   -d &#39;{\&quot;email\&quot; : \&quot;bob@myco.com\&quot;, \&quot;username\&quot; : \&quot;bob\&quot;, \&quot;tags\&quot; : [\&quot;admins\&quot;]}&#39; \\   -X &#39;POST&#39; \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;Accept: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/systemusers\&quot;
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Systemuserputpost] :body 
  # @return [Systemuserreturn]
  describe 'systemusers_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_put
  # Update a system user
  # Update a system user record and return the modified record.  ### Example  #### Add attributes to a System User  &#x60;&#x60;&#x60; curl \\  -X &#39;PUT&#39; \\  -H &#39;Content-Type: application/json&#39; \\  -H &#39;Accept: application/json&#39; \\  -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\  -d &#39;{ \&quot;attributes\&quot; : [ { \&quot;name\&quot; : \&quot;myhappyattribute\&quot;, \&quot;value\&quot; : \&quot;myhappyattributevalue\&quot; }] }&#39; \\  \&quot;https://console.jumpcloud.com/api/systemusers/:id\&quot; &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Systemuserputpost] :body 
  # @return [Systemuserreturn]
  describe 'systemusers_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_systems_binding_list
  # List system user binding
  # List system bindings for a specific system user in a system and user binding format.  ### Examples  #### List system bindings for specific system user  &#x60;&#x60;&#x60; curl \\   -H &#39;Content-Type: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/systemusers/[SYSTEM_USER_ID_HERE]/systems\&quot; &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :fields The comma separated fields included in the returned records. If omitted the default list of fields will be returned. 
  # @option opts [Integer] :limit The number of records to return at once.
  # @option opts [Integer] :skip The offset into the records to return.
  # @option opts [String] :sort The comma separated fields used to sort the collection. Default sort is ascending, prefix with &#x60;-&#x60; to sort descending. 
  # @return [Object]
  describe 'systemusers_systems_binding_list test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for systemusers_systems_binding_put
  # Update a system user binding
  # Adds or removes a system binding for a user.   This endpoint is only used for users still using JumpCloud Tags. If you are using JumpCloud Groups please refer to the documentation found [here](https://docs.jumpcloud.com/2.0/systems/manage-associations-of-a-system).  ### Example  #### Add (or remove) system to system user  &#x60;&#x60;&#x60; curl \\   -d &#39;{ \&quot;add\&quot;: [\&quot;[SYSTEM_ID_TO_ADD_HERE]\&quot;], \&quot;remove\&quot;: [\&quot;[SYSTEM_ID_TO_REMOVE_HERE]\&quot;] }&#39; \\   -X PUT \\   -H &#39;Content-Type: application/json&#39; \\   -H &#39;Accept: application/json&#39; \\   -H \&quot;x-api-key: [YOUR_API_KEY_HERE]\&quot; \\   \&quot;https://console.jumpcloud.com/api/systemusers/[SYSTEM_USER_ID_HERE]/systems\&quot; &#x60;&#x60;&#x60;
  # @param id 
  # @param content_type 
  # @param accept 
  # @param [Hash] opts the optional parameters
  # @option opts [Usersystembindingsput] :body 
  # @return [Usersystembinding]
  describe 'systemusers_systems_binding_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end