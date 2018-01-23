class FindLibrary::Library
  attr_accessor :name, :info

  @@all = []

  def initialize(name, info)
    @name = name
    @info = info
    @@all
  end



  def self.all #return all the libraries in the County
    @@all
  end

end
