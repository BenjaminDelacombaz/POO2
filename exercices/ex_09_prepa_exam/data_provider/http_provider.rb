require 'net/http'

class HttpProvider
  def initialize(source)
    @source = source
  end

  def getStudents()
    Net::HTTP.get(URI(@source)).split("\n").map {|line| line.chomp.split(' ') }
  end
end
