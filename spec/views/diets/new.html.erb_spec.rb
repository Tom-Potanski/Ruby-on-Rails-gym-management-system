require 'spec_helper'

describe "diets/new" do
  before(:each) do
    assign(:diet, stub_model(Diet,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new diet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diets_path, "post" do
      assert_select "input#diet_name[name=?]", "diet[name]"
      assert_select "input#diet_description[name=?]", "diet[description]"
    end
  end
end
