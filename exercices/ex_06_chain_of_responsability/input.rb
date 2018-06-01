class Input
  attr_accessor :value, :type, :validators
  def initialize(value, type, validators)
    @value, @type, @validators = value, type, validators
  end
end
