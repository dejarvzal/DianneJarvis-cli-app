class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
  end

  def list_library #LIST OUT ALL OF THE LIBRARIES by name
    puts "Find the information for a library in Westchester County:"
    @library = FindLibrary::Library.all
  end

  def menu #PROMPT USER TO FIND INFO ON A LIBRARY
    puts "Enter the number of the library you would like to find, type list to see the choices again or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 39
         puts @library_detail = FindLibrary::Library.details[input.to_i-1]
         puts "Choose another, type list to see them again or exit."
       elsif input.to_i > 0 && input.to_i < 39
             puts @library_detail = FindLibrary::Library.details[input.to_i-1]
       elsif input == "list"
         list_library
       elsif input == "exit"
         goodbye
       else
         puts "Not sure which library you want. Please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for using Find Library. Happy Reading!"
  end
end
#
