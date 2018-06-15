require './array_queue'
require './list_queue'

class QueueFactory
  @@kind_map = {'list' => ListQueue, 'array' => ArrayQueue}
  
  def self.create(kind)
    raise ArgumentError.new("Unknown queue kind '#{kind}'") unless @@kind_map.has_key? kind
    @@kind_map[kind].new
  end
end

#================================================================================
# Another way: create a global function looking like a class (ala javascript)

# the downside is that we have to define a globally accessible constant!
QUEUE_KIND_MAP = {'list' => ListQueue, 'array' => ArrayQueue}

# notice the Uppercase Q
def Queue(kind)
  raise ArgumentError.new("Unknown queue kind '#{kind}'") unless QUEUE_KIND_MAP.has_key? kind
  QUEUE_KIND_MAP[kind].new
end
