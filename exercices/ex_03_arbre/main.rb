require_relative('word_search_tree')

file = File.open('functions.txt', 'rb')
tree = WordSearchTree.new
file.read.gsub(/\s+/m, ' ').gsub(/^\s+|\s+$/m, '').split(" ").each do |word|
 tree.add_word(word)
end

puts tree.root.childs

# puts tree.search('x'.ord)
