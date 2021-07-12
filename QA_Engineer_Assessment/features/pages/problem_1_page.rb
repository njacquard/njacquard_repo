class Problem_1_Page
  include PageObject

# labels
#label(name, selector (id))
label(:lbl_1, id:"lbl_val_1")
label(:lbl_2, id:"lbl_val_2")
label(:lbl_3, id:"lbl_val_3")
label(:lbl_4, id:"lbl_val_4")
label(:lbl_5, id:"lbl_val_5")
label(:lbl_total, id:"lbl_ttl_val")

# text fields
#text_field(name, selector (id))
# not sure if I need to declar instance variables of each?
@txt_field_1 = text_field(:txt_field_1, id: "txt_val_1")
@txt_field_2 = text_field(:txt_field_2, id: "txt_val_2")
@txt_field_3 = text_field(:txt_field_3, id: "txt_val_4")
@txt_field_4 = text_field(:txt_field_4, id: "txt_val_5")
@txt_field_5 = text_field(:txt_field_5, id: "txt_val_6")
@txt_field_total = text_field(:txt_field_total, id: "txt_ttl_val")

# create Class array variable to get all text fields
@@all_fields = [@txt_field_1, @txt_field_2, @txt_field_3, @txt_field_4, @txt_field_5, @txt_field_total]
  def self.variable
    # Return the value of this variable
    @@all_fields
  end

# create Class variable of txt_field_total
@@txt_field_total = @txt_field_total
  def self.variables
    @@txt_field_total
  end

#attr_accessor :total_text_fields

# Utilities
  def visit_test_site
      @browser.goto 'https://www.exercise1.com/values'
  end

  def get_all_field_values (current_array)
      current_array.each do |element|
      #assign each element's value to a new array
      @values = element.value
    end
    return @values
  end

  # validation for currency on all fields array, using rails
  # unsure how to implement this fully
  #validates :all_fields, numericality: true,
  #        # use format with regex expression
  #        :format => { :with => /^\d{1,6}(\.\d{0,2})?$/}

end
