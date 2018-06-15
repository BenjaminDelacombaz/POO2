
def directories(path)
  Dir.glob(File.join(path, '*')).map {|item| File.expand_path(item)}.select {|item| File.directory?(item)}
end

def files(path)
  Dir.glob(File.join(path, '*')).map {|item| File.expand_path(item)}.select {|item| File.file?(item)}
end

def find_all_file_paths_starting_with(starts, path)
  current_files = files(path).select {|item| File.basename(item).start_with?(starts)}
  directories(path).each do |dir|
    current_files.concat(find_all_file_paths_starting_with(starts, dir))
  end
  current_files
end

puts find_all_file_paths_starting_with(ARGV[0], ARGV[1])
