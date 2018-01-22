class FindLibrary::Library
  attr_accessor :name, :info

  @@all = []

  def initialize(name, info)
    @name = name
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
