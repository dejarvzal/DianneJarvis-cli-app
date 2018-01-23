class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
  end

  def list_library #LIST OUT ALL OF THE LIBRARIES
    puts "Find the information for a library in Westchester County:"
    FindLibrary::Scraper.get_page
    @library = FindLibrary::Library.all
    binding.pry
    @library.each_with_index do |library, i|
      puts "#{i+1}""." "#{library.name}"  #fix this!
    end
  end

  def menu #PROMPT USER TO FIND INFO ON A LIBRARY
    puts "Enter the number of the library you would like to find, type list to see the choices again or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

       if input.to_i > 0
         the_library = @library[input.to_i-1]
        puts "#{@library}"  #to be fixed

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
