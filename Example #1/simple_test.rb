require 'watir-webdriver'

b = Watir::Browser.new
b.goto 'amazon.com'
b.text_field(:id => 'twotabsearchtextbox').set 'test automation'   # search phrase
b.button(:type => 'submit').click
text_string = b.div(:class =>'topBarCol').h2.span.text     # Returns Showing 1 - 16 of 1,050 Results
puts (text_string.split ' ')[5]

if (text_string.split ' ')[5].to_i  > 0      # comparing total number of results
  puts 'Test passed '
else
  puts 'Sorry but the test failed'
end
