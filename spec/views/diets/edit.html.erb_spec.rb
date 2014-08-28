require 'spec_helper'

describe "diets/edit" do
  before(:each) do
    @diet = assign(:diet, stub_model(Diet,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit diet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", diet_path(@diet), "post" do
      assert_select "input#diet_name[name=?]", "diet[name]"
      assert_select "input#diet_description[name=?]", "diet[description]"
    end
  end
end
