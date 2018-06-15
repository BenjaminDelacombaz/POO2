
def find_all_file_paths_starting_with(starts, path)
  Dir.glob(File.join(path, '*')).reduce([]) do |files, item|
    if File.file?(item) && File.basename(item).start_with?(starts)
      files << File.expand_path(item)
    elsif File.directory?(item)
      files.concat(find_all_file_paths_starting_with(starts, item))
    end
    files
  end
end

puts find_all_file_paths_starting_with(ARGV[0], ARGV[1])
