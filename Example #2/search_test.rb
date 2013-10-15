require 'watir-webdriver'
require_relative 'home_page'

b = Watir::Browser.new
b.goto 'amazon.com'

home_page = Home_Page.new (b)
result = home_page.search_and_return_number_of_results  ('test automation' )

if result > 0
  puts 'Test passed '
else
  puts 'Sorry but the test failed'
end