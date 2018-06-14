class BrowsableWordArray < Array
  def browse(visitor)
    each { |word| visitor.visit(word) }
  end
end
