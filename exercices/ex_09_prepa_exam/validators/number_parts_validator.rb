class NumberPartsValidator
  def initialize(value, number_part)
    @value, @number_part, @message = value, number_part, "#{value.join(' ')} has #{value.size}, only #{number_part} allowed."
  end
  
  def valid?
    @value.size == @number_part
  end

  def message
    @message
  end
end
