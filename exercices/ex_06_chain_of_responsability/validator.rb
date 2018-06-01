class Validator
  def initialize(input)
    @input = input
  end
  def text?
    @input.value.is_a? String
  end
  def number?
    @input.value.is_a? Numeric
  end
  def email?
   @input.value.include? '@'
  end
  def max_lenght?
    @input.value.length <= @input.validators['max_lenght']
  end
  def min_lenght?
    @input.value.length >= @input.validators['min_lenght']
  end
end
