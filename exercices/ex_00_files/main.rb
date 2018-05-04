def findAllFilePathStartingWith(starts, path, list = Array.new)
  Dir.children(path).each { |child| 
    if File.directory?(File.join(path, child))
      findAllFilePathStartingWith(starts, File.join(path, child), list)
    else
      if child.start_with? starts
        list.push(File.join(path, child))
      end
    end
  }
  list
end
puts findAllFilePathStartingWith('read', './arbo/')
