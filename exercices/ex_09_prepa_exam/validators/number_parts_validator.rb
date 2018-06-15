class NumberPartsValidator
  def initialize(value, number_part)
    @value, @number_part = value, number_part
  end
  
  def valid?
    @value.size == @number_part
  end
end
