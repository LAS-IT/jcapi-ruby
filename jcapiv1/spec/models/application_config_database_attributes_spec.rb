=begin
#JumpCloud APIs

#V1 & V2 versions of JumpCloud's API. The previous version of JumpCloud's API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SwaggerClient::ApplicationConfigDatabaseAttributes
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ApplicationConfigDatabaseAttributes' do
  before do
    # run before each test
    @instance = SwaggerClient::ApplicationConfigDatabaseAttributes.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ApplicationConfigDatabaseAttributes' do
    it 'should create an instact of ApplicationConfigDatabaseAttributes' do
      expect(@instance).to be_instance_of(SwaggerClient::ApplicationConfigDatabaseAttributes)
    end
  end
  describe 'test attribute "position"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

