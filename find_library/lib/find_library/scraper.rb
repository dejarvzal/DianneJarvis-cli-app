class FindLibrary::Scraper

  def self.create_library  #SCRAPES WEBSITE AND PUTS INFO IN AN ARRAY
    doc = Nokogiri::HTML(open("https://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/"))

    main_list = doc.css("div.entry-content").text.gsub("\n\t\t\t\t\t\t\n ","").split("\n\n\n ")
    libraries = main_list.each_with_index.map do |library_info, i|
    #  "#{i+1}" ". " +"#{library_info}"
     library = FindLibrary::Library.new(library_info)
    library.save
    end
    libraries
  end

end
