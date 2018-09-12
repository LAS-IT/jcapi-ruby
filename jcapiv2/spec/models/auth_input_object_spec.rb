=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for JCAPIv2::AuthInputObject
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AuthInputObject' do
  before do
    # run before each test
    @instance = JCAPIv2::AuthInputObject.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthInputObject' do
    it 'should create an instance of AuthInputObject' do
      expect(@instance).to be_instance_of(JCAPIv2::AuthInputObject)
    end
  end
  describe 'test attribute "auth"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

