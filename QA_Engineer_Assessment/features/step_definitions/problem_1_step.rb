# require the page class
require_relative '../pages/problem_1_page.rb'

# Objective 1
Given('a user is on the webpage and counting all the text fields') do
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
  end
end


# Objective 3
Given('a user is on the webpage and counting all values on the screen') do
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('each value of a field is added together') do
    # call helper method to populate an array with all values
    @total_sum_of_values = problem1.get_all_field_values
    # assign the total of values to the sum of the array to be used for assertion
    @total_sum_of_values.sum
end

Then('the total should equal 1,000,000.00') do
  # this is similar to another objective, wasn't sure if to harcode value in or not
  expect(@total_sum_of_values).to eq(1000000.00)
end

# Objective 4
Given('a user is on the webpage and looking at the values for the text fields') do
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('each value of a field is evaluated for number format') do
  # call helper method to populate an array with all values
  @all_field_values = problem1.get_all_field_values
end

Then('the values should be in a valid currency') do
  # unsure how to implement this fully in ruby, see page file for validate statement
  # won't compile without commenting out method
  @all_values.valid?
end

# Objective 5
Given('a user is on the webpage and is counting all values on the screen') do
  @problem1 = Problem_1_Page.new(@browser)
  @problem1.visit_test_site
end

When('each value of a field is added together') do
  # call helper method to populate an array with all values
  @total_sum = problem1.get_all_field_values
  # assign the total of values to the sum of the array to be used for assertion
  @total_sum.sum
end

Then('the total amount of the values should equal the value of the total balance field') do
  # compare sum of values against the class variable created in page file
  expect(@total_sum).to eq(@problem1.txt_field_total)
end
