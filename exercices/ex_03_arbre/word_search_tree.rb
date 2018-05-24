class WordSearchTree
  attr_accessor :root
  class Node
    attr_accessor :childs
    def initialize(data)
      @is_word = false
      @data = data
      @childs = Hash.new
    end
  end

  def initialize()
    @root = Node.new(nil)
  end

  def search(letter)
    @root.childs[letter]
  end

  def add_word(word)
    add_child(@root, word)
  end

  private def add_child(current, rest)
    letter = rest.chars.shift
    if !current.childs.has_key?(letter.ord)
      current.childs[letter.ord] = Node.new(letter.ord)
    end
    if !rest.empty?
      add_child(current.childs[letter.ord], rest)
    end
  end
end
