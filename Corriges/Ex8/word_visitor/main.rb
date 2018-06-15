#
# POO2: Ex8
# Pascal Hurni June 2016
# 

require './browsable_array'
require './browsable_word_search_tree'

require './word_beginning_visitor'
require './word_length_visitor'

# Read the passed or default file containing function names
functions_array = BrowsableArray.new
File.foreach(ARGV[0] || 'functions.txt') {|line| functions_array << line.chomp }

# Insert them in the tree
functions_tree = BrowsableWordSearchTree.new
functions_array.each {|name| functions_tree.insert(name) }

# Browse both data structure
visitor = WordBeginningVisitor.new('ha')
functions_tree.browse(visitor)
File.open('starts_with_ha_tree.out', 'w') {|file| file.puts(visitor.matches) }

visitor = WordBeginningVisitor.new('ha')
functions_array.browse(visitor)
File.open('starts_with_ha_array.out', 'w') {|file| file.puts(visitor.matches) }

# Browse both data structure with another visitor
visitor = WordLengthVisitor.new(5)
functions_tree.browse(visitor)
File.open('length_5_tree.out', 'w') {|file| file.puts(visitor.matches) }

visitor = WordLengthVisitor.new(5)
functions_array.browse(visitor)
File.open('length_5_array.out', 'w') {|file| file.puts(visitor.matches) }
