class FindLibrary::Library
  attr_accessor :name, :address, :phone, :url, :info

  @@all = []

  def initialize(name, address, phone, url)
    @name = name
    @address = address
    @phone = phone
    @url = url
    @info = info
    @@all
  end



  def self.all
    #return all the libraries in the County
    # self.scrape_library
    FindLibrary::Scraper.get_page
  end
#Scrape Westchester Library System and return a library's information based on input
  def scrape_library
    libraries = []
    libraries << self.scrape_wls
#Go to wls.org, find library location
#extract the location information
#instantiate a library
    libraries
  end
end

#   def self.scrape_wls
#     # doc = Nokogiri::HTML(open("https://www.nypl.org/locations/map"))
#     doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
#     # binding.pry
#     name = doc.css("a.external").children.first.text
#     # address =
#     # phone =
#     # url =
#     # hours =
#
#   end

# FindLibrary::LibraryScraper.new("")
# library_1 = self.new
# library_1.name = "White Plains Public Library"
# library_1.address = "100 Martine Avenue White Plains, NY 10601"
# library_1.phone = "914-422-1400"
# library_1.url = "https://whiteplainslibrary.org/"
# #library_1.hours = looks like have to go to each individual library page to get the hours of operation
#
# library_2 = self.new
# library_2.name = "New Rochelle Public Library"
# library_2.address = "One Library Plaza New Rochelle, NY 10801 "
# library_2.phone = "914-632-7878"
# library_2.url = "http://nrpl.org/"
#
# [library_1, library_2]
