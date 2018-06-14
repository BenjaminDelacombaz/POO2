class WordsByLength
  attr_reader :result

  def initialize(length)
    @result = []
    @length = length
  end

  def visit(word)
    @result << word if word.size == @length
  end
  
end
