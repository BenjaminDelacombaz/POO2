class Form
  attr_accessor :inputs
  def initialize(inputs)
    @inputs = inputs
  end
  def isValid?
    valid = true
    @inputs.each {|input| 
      case input.type
      when 'text'
        valid &= input.value.is_a? String
      when 'number'
        valid &= input.value.is_a? Numeric
      when 'email'
        valid &= input.value.include? '@'
      else
        valid &= false
      end
    }
    valid
  end
end
