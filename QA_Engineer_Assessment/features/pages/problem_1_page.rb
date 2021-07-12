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
@txt_field_1 = text_field(:txt_field_1, id: "txt_val_1")
@txt_field_2 = text_field(:txt_field_2, id: "txt_val_2")
@txt_field_3 = text_field(:txt_field_3, id: "txt_val_4")
@txt_field_4 = text_field(:txt_field_4, id: "txt_val_5")
@txt_field_5 = text_field(:txt_field_5, id: "txt_val_6")
@txt_field_total = text_field(:txt_field_total, id: "txt_ttl_val")

# create Class variable to get all fields in an array
@@all_fields = [@txt_field_1, @txt_field_2, @txt_field_3, @txt_field_4, @txt_field_5, @txt_field_total]
  def self.variable
    # Return the value of this variable
    @@all_fields
  end

#attr_accessor :total_text_fields

# Utilities
  def visit_test_site
      @browser.goto 'https://www.exercise1.com/values'
  end

end
