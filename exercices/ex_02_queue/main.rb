class ArrayQueue
  def initialize
    @queue = Array.new
  end
  def empty?
    @queue.empty?
  end

  def size
    @queue.length
  end

  def enqueue (value)
    @queue.push(value)
  end

  def dequeue
    @queue.shift
  end

  def to_s
    @queue.to_s
  end 
end

test = ArrayQueue.new
puts test.empty?
puts test.size
test.enqueue('tutu')
test.enqueue('toto')
puts test
puts test.size
test.dequeue
puts test
