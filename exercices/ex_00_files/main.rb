def findAllFilePathStartingWith(starts, path)
  Dir.children(path).each { |child| 
    if File.directory?(File.join(path, child))
      findAllFilePathStartingWith(starts, File.join(path, child))
    else
      if child.start_with? starts
        puts File.join(path, child)
      end
    end
  }
end

findAllFilePathStartingWith('read', './arbo/')