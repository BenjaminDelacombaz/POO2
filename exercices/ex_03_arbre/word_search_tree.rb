class WordSearchTree
  class Node
    def initialize(data, parent)
      @data = data
      @parent = parent
      @childs = Array.new
    end
  end

  def initialize()
    @root = Node.new(nil,nil)
  end

  def add_child(data)
    
  end
end
