class Node
  attr_accessor :element, :nextNode, :previousNode
  def initialize(element,nextNode,previousNode)
    @element, @nextNode, @previousNode = element, nextNode, previousNode
  end

  def self.last(list)
    if list.nextNode === nil
      list
    else
      self.last(list.nextNode)
    end
  end

  def self.first(list)
    if list.previousNode === nil
      list
    else
      self.first(list.previousNode)
    end
  end

end

class List
  attr_accessor :head, :tail
  def initialize(head = nil, tail = nil)
    @head, @tail = head, tail
  end

  def add_head

  end

  def add_tail

  end
end

no5 = Node.new('tete',nil, nil)
no4 = Node.new('tata',no5, nil)
no3 = Node.new('titi',no4, nil)
no2 = Node.new('toto',no3, nil)
no1 = Node.new('tutu',no2, nil)

no5.previousNode = no4
no4.previousNode = no3
no3.previousNode = no2
no2.previousNode = no1
