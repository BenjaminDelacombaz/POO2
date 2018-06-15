class Provider
  # def initialize(source)
  #   @source = source
  # end

  def self.create(source)
    case true
    when source.start_with?('http://')
      require_relative './http_provider'
      HttpProvider.new(source)
    when File.exist?(source)
      require_relative './file_provider'
      FileProvider.new(source)
    else
      false
    end
  end
end
