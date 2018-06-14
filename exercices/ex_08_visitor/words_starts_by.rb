class WordsStartsBy
  attr_reader :result

  def initialize(startsBy)
    @result = []
    @startsBy = startsBy
  end

  def visit(word)
    @result << word if word.start_with?(@startsBy)
  end
  
end

