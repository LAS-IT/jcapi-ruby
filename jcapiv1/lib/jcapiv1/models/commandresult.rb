=begin
#JumpCloud APIs

# JumpCloud's V1 API. This set of endpoints allows JumpCloud customers to manage commands, systems, & system users.

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module JCAPIv1

  class Commandresult
    # The ID of the command.
    attr_accessor :_id

    # The command that was executed on the system.
    attr_accessor :command

    # An array of file ids that were included in the command
    attr_accessor :files

    # The name of the command.
    attr_accessor :name

    # The ID of the organization.
    attr_accessor :organization

    # The time that the command was sent.
    attr_accessor :request_time

    attr_accessor :response

    # The time that the command was completed.
    attr_accessor :response_time

    # If the user had sudo rights
    attr_accessor :sudo

    # The name of the system the command was executed on.
    attr_accessor :system

    # The id of the system the command was executed on.
    attr_accessor :system_id

    # The user the command ran as.
    attr_accessor :user

    attr_accessor :workflow_id

    attr_accessor :workflow_instance_id


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'_id' => :'_id',
        :'command' => :'command',
        :'files' => :'files',
        :'name' => :'name',
        :'organization' => :'organization',
        :'request_time' => :'requestTime',
        :'response' => :'response',
        :'response_time' => :'responseTime',
        :'sudo' => :'sudo',
        :'system' => :'system',
        :'system_id' => :'systemId',
        :'user' => :'user',
        :'workflow_id' => :'workflowId',
        :'workflow_instance_id' => :'workflowInstanceId'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'_id' => :'String',
        :'command' => :'String',
        :'files' => :'Array<String>',
        :'name' => :'String',
        :'organization' => :'String',
        :'request_time' => :'String',
        :'response' => :'CommandresultResponse',
        :'response_time' => :'String',
        :'sudo' => :'BOOLEAN',
        :'system' => :'String',
        :'system_id' => :'String',
        :'user' => :'String',
        :'workflow_id' => :'String',
        :'workflow_instance_id' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'_id')
        self._id = attributes[:'_id']
      end

      if attributes.has_key?(:'command')
        self.command = attributes[:'command']
      end

      if attributes.has_key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'organization')
        self.organization = attributes[:'organization']
      end

      if attributes.has_key?(:'requestTime')
        self.request_time = attributes[:'requestTime']
      end

      if attributes.has_key?(:'response')
        self.response = attributes[:'response']
      end

      if attributes.has_key?(:'responseTime')
        self.response_time = attributes[:'responseTime']
      end

      if attributes.has_key?(:'sudo')
        self.sudo = attributes[:'sudo']
      end

      if attributes.has_key?(:'system')
        self.system = attributes[:'system']
      end

      if attributes.has_key?(:'systemId')
        self.system_id = attributes[:'systemId']
      end

      if attributes.has_key?(:'user')
        self.user = attributes[:'user']
      end

      if attributes.has_key?(:'workflowId')
        self.workflow_id = attributes[:'workflowId']
      end

      if attributes.has_key?(:'workflowInstanceId')
        self.workflow_instance_id = attributes[:'workflowInstanceId']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _id == o._id &&
          command == o.command &&
          files == o.files &&
          name == o.name &&
          organization == o.organization &&
          request_time == o.request_time &&
          response == o.response &&
          response_time == o.response_time &&
          sudo == o.sudo &&
          system == o.system &&
          system_id == o.system_id &&
          user == o.user &&
          workflow_id == o.workflow_id &&
          workflow_instance_id == o.workflow_instance_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [_id, command, files, name, organization, request_time, response, response_time, sudo, system, system_id, user, workflow_id, workflow_instance_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = JCAPIv1.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
