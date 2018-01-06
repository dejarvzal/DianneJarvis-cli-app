class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
    goodbye
  end

  def list_library
    #User puts in zip code
    #Shows the associated library:
    puts "Find a library in Westchester County:"
    # puts <<-DOC.gsub /^\s*/, ''
    #   10601 - White Plains Public Library
    #   10801 - New Rochelle Public Library
    # DOC
    @library = FindLibrary::Library.all
  end

  def menu
    puts "Enter the zipcode of the library you would like to find, type list to see the choices again or type exit to quit:"
    #might try this with the Enter the town of the library... since majority towns have 1 library location.
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      case input
      when "10601"
        puts "Location info for White Plains Public Library"
      when "10801"
        puts "Location info for New Rochelle Public Library"
      when "list" || "LIST"
        list_library
      else
        puts "Not sure which library you want, please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for using Find Library. Happy Reading!"
  end
end
