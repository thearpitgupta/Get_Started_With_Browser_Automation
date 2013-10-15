require 'watir-webdriver'
require 'rspec'

require_relative 'home_page'

b = Watir::Browser.new
b.goto 'amazon.com'
home_page = Home_Page.new (b)

RSpec.configure do |config|
  config.formatter = :documentation
  config.color_enabled = true
end

describe 'Search on Home Page'  do
  it 'Test automation has > 0 search results' do
    (home_page.search_and_return_number_of_results  ('test automation' )).should be > 0
  end

end
