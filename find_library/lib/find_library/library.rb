class FindLibrary::Library

  def self.all
    #return all the libraries in the County
    puts <<-DOC.gsub /^\s*/, ''
      10601 - White Plains Public Library
      10801 - New Rochelle Public Library
    DOC

    library_1 = self.new
    library_1.name = "White Plains Public Library"
    library_1.address = "100 Martine Avenue White Plains, NY 10601"
    library_1.phone = "914-422-1400"
    library_1.url = "https://whiteplainslibrary.org/"
    #library_1.hours = looks like have to go to each individual library page to get the hours of operation

    library_2 = self.new
    library_2.name = "New Rochelle Public Library"
    library_2.address = "One Library Plaza New Rochelle, NY 10801 "
    library_2.phone = "914-632-7878"
    library_2.url = "http://nrpl.org/"


  end

end
