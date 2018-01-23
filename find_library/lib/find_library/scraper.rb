class FindLibrary::Scraper

  def self.get_page  #SCRAPES WEBSITE AND PUTS INFO IN AN ARRAY
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    # binding.pry
    library_name = doc.css("a.external").children.text.split("Library")
    library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")

    name = []
    library_name.each_with_index do |library, i|
      puts location = "#{i+1}" ". " +"#{library}"+"Library"
      # binding.pry
      end
  end

  def self.create_library
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    # binding.pry
    # library_name = doc.css("a.external").children.text.split("Library")
    library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")

    info = []
    library_detail.each_with_index do |detail, i|
      puts details = "#{i+1}" ". " +"#{detail}"
      # binding.pry
      end

  end


  # def create_library(libraries)
  #   libraries_details = []
  #   libraries_details << self.get_page
  #   libraries.each.with_index do |library, i|
  #     name = doc.css("a.external").children.text
  #     url = doc.css("p.libraryMain a")[0]["href"]
  #     info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
  #     Library.new(name, info)
  #     # binding.pry
  #   end
  # end
end

# def self.get_zip  #Feature to add once program works fine.?
#     doc = Nokogiri::HTML(open("https://www.zillow.com/browse/homes/ny/westchester-county/"))
#     # zipcode =
#     # binding.pry
# end

# def self.details
#   self.get_page.each_with_index do |details, i|
#     FindLibrary::Library.all << "#{i+1}""." "#{details}"
#     binding.pry
#   end
# end
