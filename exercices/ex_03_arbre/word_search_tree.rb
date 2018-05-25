class WordSearchTree
  attr_accessor :root
  class Node
    attr_accessor :childs, :is_word
    def initialize(data)
      @is_word = false
      @data = data
      @childs = Hash.new
    end
  end

  def initialize()
    @root = Node.new(nil)
  end

  def exists?(rest, current = @root)
    letterList = rest.chars
    letter = letterList.shift
    rest = letterList.join

    if !rest.empty? && current.childs.has_key?(letter.ord)
      exists?(rest, current.childs[letter.ord])
    else
      current.is_word
    end
  end
  
  def search(letter)
    @root.childs[letter]
  end

  def add_word(word)
    add_child(@root, word)
  end

  private def add_child(current, rest)
    letterList = rest.chars
    letter = letterList.shift
    rest = letterList.join
    if !current.childs.has_key?(letter.ord)
      current.childs[letter.ord] = Node.new(letter)
    end
    if !rest.empty?
      add_child(current.childs[letter.ord], rest)
    else
      current.childs[letter.ord].is_word = true
    end
  end
end
