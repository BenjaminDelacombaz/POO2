require_relative 'word_search_tree'

class BrowsableWordSearchTree < WordSearchTree

  class Node < WordSearchTree::Node
    def browse(visitor, partial_word)
      @children.each_with_index do |child, index|
        next unless child

        if child.word?
          visitor.visit(partial_word + (BASE+index).chr)
        end

        child.browse(visitor, partial_word + (BASE+index).chr)
      end
    end
  end

  def browse(visitor)
    @root.browse(visitor, '')
  end

  def initialize
    @root = Node.new
  end

end
