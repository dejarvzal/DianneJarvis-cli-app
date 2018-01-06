class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
  end

  def list_library
    #User puts in zip code
    #Shows the associated library:
    puts <<-DOC.gsub /^\s*/, ''
      10601 - White Plains Public Library
      10801 - New Rochelle Public Library
    DOC
  end

def menu
  puts "Enter the zipcode of the library you would like to find:"
  #might try this with the Enter the town of the library... since majority towns have 1 library location.
  input = gets.strip
  case input
  when "10601"
    puts "Location info for White Plains Public Library"
  when "10801"
    puts "Location info for New Rochelle Public Library"
  end
end

end
