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
text_field(:txt_field_1, id: "txt_val_1")
text_field(:txt_field_2, id: "txt_val_2")
text_field(:txt_field_3, id: "txt_val_4")
text_field(:txt_field_4, id: "txt_val_5")
text_field(:txt_field_5, id: "txt_val_6")
text_field(:txt_field_total, id: "txt_ttl_val")

# Utilities
  def visit_test_site
      @browser.goto 'https://www.exercise1.com/values'
  end

  def get_count_of_values
    # unsure if values also includes labels so get it just in case.
    # $total_label_count = [lbl_1, lbl_2, lbl_3, lbl_4, lbl_5, lbl_total]
    # create an array of values so we can run an expect() against it
    $total_text_fields = [txt_field_1, txt_field_2, txt_field_3, txt_field_4, txt_field_5]
  end



end
