require 'seeren/version'

require 'seeren/engine'
require 'seeren/view_config'

require_relative '../app/controllers/seeren/components_controller'

module Seeren
  def self.setup
    yield self
  end

  def self.mapping(file=nil)
    @mapping = YAML.load_file(file) if file
    @mapping
  end
end
