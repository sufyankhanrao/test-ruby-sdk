# json_value_tester
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module JsonValueTester
  # ValueContainer Model.
  class ValueContainer < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Object]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [Array[Object]]
    attr_accessor :value_array

    # TODO: Write general description for this method
    # @return [Hash[String, Object]]
    attr_accessor :value_map

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['id'] = 'id'
      @_hash['value'] = 'value'
      @_hash['value_array'] = 'valueArray'
      @_hash['value_map'] = 'valueMap'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        value_array
        value_map
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id = nil, name = nil, value = nil, value_array = SKIP,
                   value_map = SKIP, additional_properties = {})
      @name = name
      @id = id
      @value = value
      @value_array = value_array unless value_array == SKIP
      @value_map = value_map unless value_map == SKIP

      # Add additional model properties to the instance.
      additional_properties.each do |_name, _value|
        instance_variable_set("@#{_name}", _value)
      end
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      name = hash.key?('name') ? hash['name'] : nil
      value = hash.key?('value') ? hash['value'] : nil
      value_array = hash.key?('valueArray') ? hash['valueArray'] : SKIP
      value_map = hash.key?('valueMap') ? hash['valueMap'] : SKIP

      # Clean out expected properties from Hash.
      names.each_value { |k| hash.delete(k) }

      # Create object from extracted values.
      ValueContainer.new(id,
                         name,
                         value,
                         value_array,
                         value_map,
                         hash)
    end
  end
end