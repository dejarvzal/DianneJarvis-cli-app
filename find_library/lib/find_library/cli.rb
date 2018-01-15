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
    @library.each.with_index(1) do |library, i|
      binding.pry
      puts "#{i}. #{library.name}"
      puts "#{library.address}"
      puts "#{library.phone}"
      puts "#{library.url}"
    end
  end

  def menu
    puts "Enter the zipcode of the library you would like to find, type list to see the choices again or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

       if input.to_i > 0
         the_library = @library[input.to_i-1]
        #  puts @library[input.to_i-1]
         puts "#{the_library.name}"
         puts "#{the_library.address}"
         puts "#{the_library.phone}"
         puts "#{the_library.url}"
       elsif input == "list"
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
