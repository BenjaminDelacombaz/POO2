class PaternValidator < FormatValidator
  def initialize(value)
    super(value, /^[A-Z]/)
    @message = "#{value} doesn't start with a capital."
  end

  def message
    @message
  end
end
