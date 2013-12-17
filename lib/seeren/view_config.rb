class Seeren::ViewConfig
  attr_reader :view, :js, :css

  def initialize(args={})
    args.each do |key, value|
      self.public_send "#{key}=", value
    end
  end

  def contain_in
    style = ""
    style += "width:#{@width};" if @width
    style += "height:#{@height};" if @height
    style
  end

  private
  %w[width height].each do |property|
    define_method "#{property}=" do |value|
      validate_size value

      self.instance_variable_set "@#{property}", value
    end
  end

  %w[view js css].each do |property|
    define_method "#{property}=" do |value|
      self.instance_variable_set "@#{property}", value
    end
  end

  def validate_size(value)
    if value and not (value =~ /[\d\.]+(px|em)/)
      fail Seeren::InvalidFormat
    end
  end
end

class Seeren::Exception < StandardError ; end
class Seeren::InvalidFormat < Seeren::Exception ; end
class Seeren::MissingAsset < Seeren::Exception ; end
