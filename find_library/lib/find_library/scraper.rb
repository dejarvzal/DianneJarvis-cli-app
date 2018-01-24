class FindLibrary::Scraper

  def self.get_page  #SCRAPES WEBSITE AND PUTS INFO IN AN ARRAY
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    library_name = doc.css("a.external").children.text.split("Library")
    library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")

    name = []
    library_name.each_with_index do |library, i|
      puts location = "#{i+1}" ". " +"#{library}"+"Library"
      end
  end

  def self.create_library #CREATES A LIBRARY WITH DETAILS
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    library_detail = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")

    info = []
    library_detail.each_with_index do |detail, i|
      the_library = "#{i+1}" "." +"#{detail}"
      end
    end
end
