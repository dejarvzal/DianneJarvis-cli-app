require "pry"
class FindLibrary::Library
  attr_accessor :name

  @@all = []
  @@details = []

  def initialize(name)
    @name = name
    self
  end

  def save
    @@all << self.name
  end

  def self.all
    @@all
  end

end
