require "pry"
class FindLibrary::Library
  attr_accessor :name

  @@all = []
  @@details = []

  def initialize(name)
    @name = name
    self
  end

  def self.all
    @@all
  end

  def save
    @@all << self.name
  end

  def self.details #the detailed information for each library
    FindLibrary::Scraper.create_library
    # FindLibrary::Scraper.get_page
    #this is an object - each instance of a library

  end

end
