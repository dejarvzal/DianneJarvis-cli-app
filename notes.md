Building my CLI Gem:

1. Plan the gem, imagine the interface - Check
2. Start with project structure - Check
3. Start with the entry point - the file to run
4. Force that to build the CLI interface
5. Stub out the interface
6. Start making things real
7. Discover objects
8. Program

A Command Line Interface for Library locations -
    Westchester Library System (WLS) or New York Public Library (NYPL)

  http://www.westchesterlibraries.org/about-wls/member-libraries/list-of-member-libraries/  

  User puts in zip code

  Shows the associated library:
    10601 - White Plains Public Library
    10801 - New Rochelle Public Library
    etc.

What information is good to know about a library location?
  name
  address
  phone number
  url-website address
  hours of operation



  Do you want to know the address?
  Y for Yes, N for No
    Shows Address of the branch

  Would you like to call them?
  Y for Yes, N for No
    Shows phone number of the branch

  Do you want to know the hours they are open?
  Y for Yes, N for No
    Shows hours of the branch

  Would you like their website?
  Y for Yes, N for No
    Shows website of the branch
