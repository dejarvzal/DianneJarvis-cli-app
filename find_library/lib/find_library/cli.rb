class FindLibrary::CLI

  def call
    puts "Where's the Library?"
    list_library
    menu
    goodbye
  end

  def list_library
    puts "Find the information for a library in Westchester County:"
    @library = FindLibrary::Library.all
    @library.each_with_index do |library, i|
      # binding.pry
      puts "#{i+1}""." "#{library}" + "Library"
      # puts "#{library.url}"
      # puts "#{library.info}"
      # puts "#{library.address}"
      # puts "#{library.phone}"
    end
  end

  def menu
    puts "Enter the number of the library you would like to find, type list to see the choices again or type exit to quit:"
    input = nil
    while input != "exit"
      input = gets.strip.downcase

       if input.to_i > 0
         the_library = @library[input.to_i-1]
        #  puts @library[input.to_i-1]
        puts "#{library.name}"
        #  puts "#{the_library.name}"
        #  puts "#{the_library.address}"
        #  puts "#{the_library.phone}"
        #  puts "#{the_library.url}"
       elsif input == "list"
         list_library
       else
         puts "Not sure which library you want. Please type list or exit."
      end
    end
  end

  def goodbye
    puts "Thanks for using Find Library. Happy Reading!"
  end
end
