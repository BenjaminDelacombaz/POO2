class FormatValidator
  def initialize(value, format)
    @value, @format = value, format
  end
  
  def valid?
    @value =~ @format
  end
end
