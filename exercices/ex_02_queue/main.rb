require_relative('array_queue')
require_relative('linked_queue')

# puts '------------- Test ArrayQueue---------------'
# test = ArrayQueue.new
# puts test.empty?
# puts test.size
# test.enqueue('tutu')
# test.enqueue('toto')
# puts test
# puts test.size
# test.dequeue
# puts test
# puts '------------- End Test ArrayQueue---------------'

# puts '------------- Test LinkedQueue---------------'
# test = LinkedQueue.new
# puts test.empty?
# puts test.size
# test.enqueue('tutu')
# test.enqueue('toto')
# puts test.size
# test.dequeue
# puts '------------- End Test LinkedQueue---------------'

start_element = 1000000
element_to_add = 20000000
current_element = 0
array_queue = ArrayQueue.new
linked_queue = LinkedQueue.new
date_end = nil
date_start = nil

while current_element < start_element do
  array_queue.enqueue('Tutu')
  current_element += 1
end

current_element = 0
while current_element < start_element do
  linked_queue.enqueue('Tutu')
  current_element += 1
end

puts '------------- Test ArrayQueue---------------'
puts '------------- Test Enqueue---------------'
current_element = 0
date_start = Time.now
while current_element < element_to_add do
  array_queue.enqueue('Titi')
  current_element += 1
end
date_end = Time.now

puts array_queue.size
puts (date_end - date_start).to_i

puts '------------- Test Dequeue---------------'
current_element = 0
date_start = Time.now
while current_element < element_to_add do
  array_queue.dequeue
  current_element += 1
end
date_end = Time.now

puts array_queue.size
puts (date_end - date_start).to_i
puts '------------- End Test ArrayQueue---------------'

puts '------------- Test LinkedQueue---------------'
puts '------------- Test Enqueue---------------'
current_element = 0
date_start = Time.now
while current_element < element_to_add do
  linked_queue.enqueue('Titi')
  current_element += 1
end
date_end = Time.now

puts linked_queue.size
puts (date_end - date_start).to_i

puts '------------- Test Dequeue---------------'
current_element = 0
date_start = Time.now
while current_element < element_to_add do
  linked_queue.dequeue
  current_element += 1
end
date_end = Time.now

puts linked_queue.size
puts (date_end - date_start).to_i
puts '------------- End Test LinkedQueue---------------'
