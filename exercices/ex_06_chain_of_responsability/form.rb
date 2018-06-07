require_relative 'validator'
class Form
  def initialize(inputs)
    @inputs = inputs
  end
  def is_valid?
    valid = true
    @inputs.each { |input|
      validator = Validator.new(input)
      input.validators[input.type] = nil
      input.validators.each{ |validator_name, value|
      valid &= validator.send("#{validator_name}?")}
    }
    valid
  end
end
