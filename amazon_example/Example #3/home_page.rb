# Page-object

class Home_Page

  attr_accessor :browser

  def initialize (browser)
    @local_browser = browser
  end

  # Text Field
  def search_field
    @local_browser.text_field(:id => 'twotabsearchtextbox')
  end

  def search_button
    @local_browser.button(:type => 'submit')
  end

  def search_and_return_number_of_results ( search_criteria)
    search_field.set search_criteria
    search_button.click
    text_string = @local_browser.div(:class =>'topBarCol').h2.span.text     # Returns Showing 1 - 16 of 1,050 Results
    return (text_string.split ' ')[5].to_i
  end

end