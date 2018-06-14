require_relative './browsable_word_search_tree'
require_relative './browsable_word_array'
require_relative './words_by_length'
require_relative './words_starts_by'

function_array = BrowsableWordArray.new
# Read the passed or default file containing function names
functions_array = File.readlines(ARGV[0] || 'functions.txt').map(&:chomp)

# Insert them in the tree
functions_tree = BrowsableWordSearchTree.new
functions_array.each {|name| functions_tree.insert(name) }

# Show function with 5 length
visitor = WordsByLength.new(5)
functions_tree.browse(visitor)
puts visitor.result

# Show function start by ha
visitor = WordsStartsBy.new('ha')
functions_tree.browse(visitor)
puts visitor.result
