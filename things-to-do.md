Hi, Dianne!
Nice job on your CLI Gem portfolio project review today. I'm looking forward to meeting with you again and wanted to reiterate that it is totally normal for a student to need another go at their review. You've come a long way since you started. We just want to make sure that you've got a rock-solid foundation of knowledge to call on you move through the rest of the curriculum.

**--->Here are some things I'd like you to work on:<----**
- Variable types and their scopes. What is a local variable, instance variable, class variable in Ruby? When is each in and out of scope? (Start here: http://www.techotopia.com/index.php/Ruby_Variable_Scope) **--->DONE--->**

- Research ruby's #collect iterator (also called #map). I will ask you to use #collect and compare its function to #each. (Start here: https://learn.onemonth.com/ruby-tutorial-map-vs-each/) **--->DONE--->**

- Refactor your gem to use data collected by FindLibrary::Scraper to create new FindLibrary::Library objects
**--->TO DO: the scraper class will only scrape the data from the website? or will it also put it in an array?
the library class will manipulate the array to create the objects? or will it create objects by using the scraper method get_page?
--->**

- Implement a #save method in FindLibrary::Library to save these new objects to @@all. Find an appropriate place to call this #save method in order to ensure an object is added to FindLibrary::Library.all. (Hint: .new is usually not expected to persist an object. Perhaps you'll want to create a .create method?
Think back to labs like this one: https://learn.co/tracks/full-stack-web-development-v3/object-oriented-ruby/final-projects/music-library-cli)
When you've finished, you can use this link to schedule another appointment: https://meetme.so/LuisaScavoProjectReview

Please reach out if you have any questions or concerns!
Regards,
Luisa Scavo  
luisa@flatironschool.com
