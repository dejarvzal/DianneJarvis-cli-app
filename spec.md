# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application
      There is a CLI Class (`lib/find_library/cli.rb`) that steps the user through the program to find the library they want more information on.
- [x] Pull data from an external source
      There is one method, create_library, in the Scraper class that does the work of scraping the Westchester Library System site to get the list of libraries and their information.
- [x] Implement both list and detail views
      The Library class handles creating the list of libraries with their details via the all method.
