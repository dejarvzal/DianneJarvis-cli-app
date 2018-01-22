class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
    goodbye
  end

  def list_library #LIST OUT ALL OF THE LIBRARIES
    puts "Find the information for a library in Westchester County:"
    @library = FindLibrary::Library.all
    @library.each_with_index do |library, i|
      # binding.pry
      puts "#{i+1}""." "#{library}" + "Library"
    end
  end

  def menu #PROMPT USER TO FIND INFO ON A LIBRARY
    puts "Enter the number of the library you would like to find, type list to see the choices again or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

       if input.to_i > 0
         the_library = @library[input.to_i-1]
        puts "#{library.name}"  #to be fixed

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

# puts "#{library.url}"
# puts "#{library.info}"
# puts "#{library.address}"
# puts "#{library.phone}"
