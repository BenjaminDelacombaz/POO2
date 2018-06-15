class FileProvider
  def initialize(file)
    @file = file
  end

  def getStudents()
    File.readlines(@file).map {|line| line.chomp.split(' ') }
  end
end
