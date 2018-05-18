require_relative('double_linked_list')
class LinkedQueue
  def initialize
    @queue = DoubleLinkedList.new
  end
  def empty?
    @queue.empty?
  end

  def size
    @queue.size
  end

  def enqueue (value)
    @queue.add_tail(value)
  end

  def dequeue
    @queue.remove_head
  end
end 