class FindLibrary::Library

  def self.all
    #return all the libraries in the County
    puts <<-DOC.gsub /^\s*/, ''
      10601 - White Plains Public Library
      10801 - New Rochelle Public Library
    DOC
  end

end
