class PaternValidator < FormatValidator
  def initialize(value)
    super(value, /^[A-Z]/)
  end
end
