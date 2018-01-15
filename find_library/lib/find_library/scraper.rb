# require "watir"

class FindLibrary::Scraper

  # 1.  From a File
  # 2. Is from a JSON URL

  # Watir::Browser.new :chrome, headless: true

  # def import
  #   # 1. I have to read the contents of a File
  #   # 2. have to load those contents into Nokogiri document
  # end

  def self.get_page
    libraries = []
    # doc = Nokogiri::HTML(open("https://www.nypl.org/locations/map"))
    doc = Nokogiri::HTML(open("http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))
    # binding.pry

    name = doc.css("a.external").children.text
    url = doc.css("p.libraryMain a")[0]["href"]
    # address =
    # phone =

# Full Info for each library except url:
    all_info = doc.css("p.libraryMain").text

# Full Info for each library except name and url:
    info = doc.css("div.entry-content").text.split("\n")
    info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
    info = doc.css("div.entry-content").text.split

# Split at \n...Convert to an array... then index 0 = name, index 1 = Director, index 2 = address 1, index 3 = address 2, index 4= phone, index 5 = fax

  #scraping creates an array
  libraries << [name, url, info]

  libraries
  end

  def create_library(libraries)
    libraries.each.with_index do |library, i|
      name = doc.css("a.external").children.text
      url = doc.css("p.libraryMain a")[0]["href"]
      info = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
      Library.new(name, url, info)
    end
  end

end

# def self.new_from_json(url)
# raw_json  = open(url).readjson = JSON.parse(raw.json)
# end
