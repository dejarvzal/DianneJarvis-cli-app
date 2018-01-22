class FindLibrary::Scraper

  def self.get_page
    libraries = []
    # library_name = []
    # library_info = []
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    name = doc.css("a.external").children.text.split("Library")
    library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
    #As if the iteration needs to be done here.
    # library_name << [name]
    # library_info << [info]
    # libraries << [library_name, library_url, library_info]  #it's putting the libraries in the array, but not the url and info

  # libraries << url#, info]
  # libraries << info
    library_detail.each_with_index do |details, i|
      puts "#{i+1}""." "#{details}"
      # binding.pry
    end
  # binding.pry
  end

  def self.get_zip
      doc = Nokogiri::HTML(open("https://www.zillow.com/browse/homes/ny/westchester-county/"))
      # zipcode =
      # binding.pry
  end

  def create_library(libraries)
    libraries_details = []
    libraries_details << self.get_page
    libraries.each.with_index do |library, i|
      name = doc.css("a.external").children.text
      url = doc.css("p.libraryMain a")[0]["href"]
      info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
      Library.new(name, url, info)
      # binding.pry
    end
  end
end

# url = doc.css("p.libraryMain a")[0]["href"]
# Full Info for each library except url:
#     all_info = doc.css("p.libraryMain").text
#
# # Full Info for each library except name and url:
#     info = doc.css("div.entry-content").text.split("\n")
#     info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
#     info = doc.css("div.entry-content").text.split
#scraping creates an array
