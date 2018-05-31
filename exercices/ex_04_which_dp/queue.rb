require_relative('array_queue')
require_relative('linked_queue')

class Queue

  def self.create(type)
    case type
    when 'list'
      LinkedQueue.new
    when 'array'
      ArrayQueue.new
    end
  end

end
