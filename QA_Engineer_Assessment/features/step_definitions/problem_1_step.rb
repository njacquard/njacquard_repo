require_relative '../pages/problem_1_page.rb'

Given('a user is on https:\/\/www.exercise1.com\/values') do
  # create instance from Problem Class and call method to have browser go to site
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('a count is applied to the number of text fields') do
  # call method to return an array of values for the text field count (values)
  @problem1.get_count_of_values
end

Then('the count should equal 6') do
  # Verify count should equal 6
  expect($total_text_fields.length).to eq(6);
end
