From Scraper Class:
# library_name = doc.css("a.external").children.text.split("Library")
# library.name = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(0) #set a value for each number
# library_director = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(1) #set a value for each number
# library_street_address = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(2) #set a value for each number
# library_city_state_zip = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(3) #set a value for each number
# library_phone = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(4) #set a value for each number
# library.save
# library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")  all info for a library
# library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0)
# #at(0) gives the first item in the array.
# library_content = doc.css("div.entry-content p")
#
# library_content.each do |lib|
# end
#
# library_name.collect_with_index do |library, i|
# puts location = "#{i+1}" ". " +"#{library}"+"Library"
# name = []
# library_name.each_with_index do |library, i|
#   puts location = "#{i+1}" ". " +"#{library}"+"Library"
# # library_name.collect_with_index do |library, i|
#   puts location = "#{i+1}" ". " +"#{library}"+"Library"
#   end

# doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").first

# doc = Nokogiri::HTML(open("https://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
# library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(0)
#
# info = []
# library_detail.each_with_index do |detail, i|
#   the_library = "#{i+1}" "." +"#{detail}"
# end

# library_url = doc.css("div.entry-content strong a.external external_icon").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ").at(0).split("\n").at(3)
# doc.css()



From Library Class:
#Scrape Westchester Library System and return a library's information based on input
#   def scrape_library
#     libraries = []
#     libraries << self.scrape_wls
# #Go to wls.org, find library location
# #extract the location information
# #instantiate a library
#     libraries
#   end
# end

  # def self.scrape_wls
  #   # doc = Nokogiri::HTML(open("https://www.nypl.org/locations/map"))
  #   doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
  #   # binding.pry
  #   name = doc.css("a.external").children.first.text
  #   # address =
  #   # phone =
  #   # url =
  #   # hours =
  #
  # end

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

From Scraper Class:

# url = doc.css("p.libraryMain a")[0]["href"]
# Full Info for each library except url:
#     all_info = doc.css("p.libraryMain").text
#
# # Full Info for each library except name and url:
#     info = doc.css("div.entry-content").text.split("\n")
#     info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
#     info = doc.css("div.entry-content").text.split
#scraping creates an array


#As if the iteration needs to be done here.
# library_name << [name]
# library_info << [info]
# libraries << [library_name, library_url, library_info]  #it's putting the libraries in the array, but not the url and info

# libraries << url#, info]
# libraries << info
