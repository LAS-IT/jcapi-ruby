=begin
#JumpCloud APIs

# JumpCloud's V2 API. This set of endpoints allows JumpCloud customers to manage objects, groupings and mappings and interact with the JumpCloud Graph.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module JCAPIv2

  class SystemInsightsLaunchd
    attr_accessor :collection_time

    attr_accessor :disabled

    attr_accessor :groupname

    attr_accessor :inetd_compatibility

    attr_accessor :keep_alive

    attr_accessor :label

    attr_accessor :name

    attr_accessor :on_demand

    attr_accessor :path

    attr_accessor :process_type

    attr_accessor :program

    attr_accessor :program_arguments

    attr_accessor :queue_directories

    attr_accessor :root_directory

    attr_accessor :run_at_load

    attr_accessor :start_interval

    attr_accessor :start_on_mount

    attr_accessor :stderr_path

    attr_accessor :stdout_path

    attr_accessor :system_id

    attr_accessor :username

    attr_accessor :watch_paths

    attr_accessor :working_directory


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'collection_time' => :'collection_time',
        :'disabled' => :'disabled',
        :'groupname' => :'groupname',
        :'inetd_compatibility' => :'inetd_compatibility',
        :'keep_alive' => :'keep_alive',
        :'label' => :'label',
        :'name' => :'name',
        :'on_demand' => :'on_demand',
        :'path' => :'path',
        :'process_type' => :'process_type',
        :'program' => :'program',
        :'program_arguments' => :'program_arguments',
        :'queue_directories' => :'queue_directories',
        :'root_directory' => :'root_directory',
        :'run_at_load' => :'run_at_load',
        :'start_interval' => :'start_interval',
        :'start_on_mount' => :'start_on_mount',
        :'stderr_path' => :'stderr_path',
        :'stdout_path' => :'stdout_path',
        :'system_id' => :'system_id',
        :'username' => :'username',
        :'watch_paths' => :'watch_paths',
        :'working_directory' => :'working_directory'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'collection_time' => :'String',
        :'disabled' => :'String',
        :'groupname' => :'String',
        :'inetd_compatibility' => :'String',
        :'keep_alive' => :'String',
        :'label' => :'String',
        :'name' => :'String',
        :'on_demand' => :'String',
        :'path' => :'String',
        :'process_type' => :'String',
        :'program' => :'String',
        :'program_arguments' => :'String',
        :'queue_directories' => :'String',
        :'root_directory' => :'String',
        :'run_at_load' => :'String',
        :'start_interval' => :'String',
        :'start_on_mount' => :'String',
        :'stderr_path' => :'String',
        :'stdout_path' => :'String',
        :'system_id' => :'String',
        :'username' => :'String',
        :'watch_paths' => :'String',
        :'working_directory' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'collection_time')
        self.collection_time = attributes[:'collection_time']
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.has_key?(:'groupname')
        self.groupname = attributes[:'groupname']
      end

      if attributes.has_key?(:'inetd_compatibility')
        self.inetd_compatibility = attributes[:'inetd_compatibility']
      end

      if attributes.has_key?(:'keep_alive')
        self.keep_alive = attributes[:'keep_alive']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'on_demand')
        self.on_demand = attributes[:'on_demand']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'process_type')
        self.process_type = attributes[:'process_type']
      end

      if attributes.has_key?(:'program')
        self.program = attributes[:'program']
      end

      if attributes.has_key?(:'program_arguments')
        self.program_arguments = attributes[:'program_arguments']
      end

      if attributes.has_key?(:'queue_directories')
        self.queue_directories = attributes[:'queue_directories']
      end

      if attributes.has_key?(:'root_directory')
        self.root_directory = attributes[:'root_directory']
      end

      if attributes.has_key?(:'run_at_load')
        self.run_at_load = attributes[:'run_at_load']
      end

      if attributes.has_key?(:'start_interval')
        self.start_interval = attributes[:'start_interval']
      end

      if attributes.has_key?(:'start_on_mount')
        self.start_on_mount = attributes[:'start_on_mount']
      end

      if attributes.has_key?(:'stderr_path')
        self.stderr_path = attributes[:'stderr_path']
      end

      if attributes.has_key?(:'stdout_path')
        self.stdout_path = attributes[:'stdout_path']
      end

      if attributes.has_key?(:'system_id')
        self.system_id = attributes[:'system_id']
      end

      if attributes.has_key?(:'username')
        self.username = attributes[:'username']
      end

      if attributes.has_key?(:'watch_paths')
        self.watch_paths = attributes[:'watch_paths']
      end

      if attributes.has_key?(:'working_directory')
        self.working_directory = attributes[:'working_directory']
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
          collection_time == o.collection_time &&
          disabled == o.disabled &&
          groupname == o.groupname &&
          inetd_compatibility == o.inetd_compatibility &&
          keep_alive == o.keep_alive &&
          label == o.label &&
          name == o.name &&
          on_demand == o.on_demand &&
          path == o.path &&
          process_type == o.process_type &&
          program == o.program &&
          program_arguments == o.program_arguments &&
          queue_directories == o.queue_directories &&
          root_directory == o.root_directory &&
          run_at_load == o.run_at_load &&
          start_interval == o.start_interval &&
          start_on_mount == o.start_on_mount &&
          stderr_path == o.stderr_path &&
          stdout_path == o.stdout_path &&
          system_id == o.system_id &&
          username == o.username &&
          watch_paths == o.watch_paths &&
          working_directory == o.working_directory
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [collection_time, disabled, groupname, inetd_compatibility, keep_alive, label, name, on_demand, path, process_type, program, program_arguments, queue_directories, root_directory, run_at_load, start_interval, start_on_mount, stderr_path, stdout_path, system_id, username, watch_paths, working_directory].hash
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
        temp_model = JCAPIv2.const_get(type).new
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