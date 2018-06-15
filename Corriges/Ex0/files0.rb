
def find_all_file_paths_starting_with(starts, path)
  files = []
  Dir.glob(File.join(path, '*')).each do |item|
    if File.file?(item) && File.basename(item).start_with?(starts)
      files << File.expand_path(item)
    elsif File.directory?(item)
      files.concat(find_all_file_paths_starting_with(starts, item))
    end
  end
  files
end

puts find_all_file_paths_starting_with(ARGV[0], ARGV[1])
