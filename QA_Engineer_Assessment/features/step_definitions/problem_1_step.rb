# require the page class
require_relative '../pages/problem_1_page.rb'

# Objective 1
Given('a user is on the webpage and counting all values') do
  # create instance from Problem Class and call method to have browser go to site
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('a count is applied to the number of text fields on the screen') do
  # assign an instance variable to the class object containing all fields
  @total_text_fields = @problem1.all_fields
end

Then('the count should equal 6') do
  # Verify count should equal 6
  expect(@total_text_fields.length).to eq(6)
  @problem1.close
end

# Objective 2
Given('a user is on the webpage and comparing all values on the screen') do
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('a value is evaluated on the screen') do
  # map values of each element into new array to use for assertion below
  @values_array = @problem1.all_fields.map {|element| element.value}
end

Then('the value is greater than 0') do
  @values_array.each do |element_value|
    expect(element_value).to be > 0
    @problem1.close
  end
end
