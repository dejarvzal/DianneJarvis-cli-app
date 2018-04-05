class FindLibrary::CLI


  def call
    FindLibrary::Scraper.create_library
    puts "Where's the Library?"
    list_library
    menu
  end

  def list_library #LIST OUT ALL OF THE LIBRARIES by name
    puts "Find the information for a library in Westchester County."
    puts "\n"
    FindLibrary::Library.all.each_with_index.map do |library, i|
     puts "#{i+1}" ". " +"#{library}"
     puts "\n"
    end
    puts "Enter the number of the library you would like to find:"
  end

  def menu #PROMPT USER TO FIND INFO ON A LIBRARY
    puts "You can type 'list' to see the choices again or type 'exit' to quit:"
    input = nil
    # binding.pry
    while input != "exit"
      input = gets.strip
      # if input.split('').all? { |c| (1..44).cover?(c) }
      if (input.to_i >= 1 && input.to_i < 45) && input[/^-?\d+$/] and input.size <= 2
         puts "You selected: " "#{input}" ", which is the "
         puts @library_detail = FindLibrary::Library.all[input.to_i-1]
         puts "\n"
         puts "Choose another, type list to see them again or exit:"
    elsif (input.to_i >= 1 && input.to_i < 45) && input[/^-?\d+$/] and input.size <= 2
        @library_detail
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
