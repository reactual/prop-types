require "json"
require "prop_types/cached_shape"
require "prop_types/destructure"
require "prop_types/generator"
require "prop_types/indent"
require "prop_types/shape_cache"

module PropTypes
  def self.generate(json_string_or_hash, options = {})
    if json_string_or_hash.is_a?(String)
      example_props = JSON.parse(json_string_or_hash)
    else
      example_props = json_string_or_hash
    end
    PropTypes::Generator.new(example_props, options).to_js
  end
end
