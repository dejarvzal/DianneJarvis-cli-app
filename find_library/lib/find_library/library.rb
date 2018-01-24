class FindLibrary::Library
  attr_accessor :name, :info

  @@all = []
  @@details = []

  def initialize(name, info)
    @name = name
    @info = info
    @@all
    @@details
  end



  def self.all #return all the libraries in the County by name
    @@all << FindLibrary::Scraper.get_page
  end

  def self.details
    #the detailed information for each library
    # @@details << FindLibrary::Scraper.create_library
    FindLibrary::Scraper.create_library
  end

end
