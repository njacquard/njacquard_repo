# require the page class
require_relative '../pages/problem_1_page.rb'

# Objective 1
Given('a user is on the webpage') do
  # create instance from Problem Class and call method to have browser go to site
  @problem1 = Problem_1_Page.new(@browser)
  $problem1.visit_test_site
end

When('a count is applied to the number of text fields on the screen') do
  # call method to return an array of values for the text field count (values)
  @problem1.get_count_of_values
end

Then('the count should equal 6') do
  # Verify count should equal 6
  expect($total_text_fields.length).to eq(6);
  @problem1.close
end

# Objective 2
Given('a user is on the webpage') do
  @problem1 = Problem_1_Page.new(@browser)
  $problem1.visit_test_site
end

When('a value is evaluated on the screen') do
  @problem1.$total_text_fields.value.each do
    
  end
end

Then('the value is greater than 0') do

end
