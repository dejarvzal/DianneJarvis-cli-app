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
    @@all
    #return all the libraries in the County
    # self.scrape_library

    # binding.pry
    # FindLibrary::Scraper.create_library
  end

end
