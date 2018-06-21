class Error
  def initialize(errors)
    @errors = errors
  end

  def add(error)
    @errors.push(error)
  end

  def show
    @errors
  end

  def hasError?
    @errors.length > 0
  end
end
