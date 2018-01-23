class FindLibrary::Library
  attr_accessor :name, :info

  @@all = []

  def initialize(name, info)
    @name = name
    @info = info
    @@all
  end



  def self.all #return all the libraries in the County by name
    @@all << FindLibrary::Scraper.get_page
  end

  def self.details
    #the detailed information for each library
  end

end
