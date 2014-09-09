require 'spec_helper'

describe "models/new" do
  before(:each) do
    assign(:model, stub_model(Model,
      :weekday => "MyString",
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new model form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", models_path, "post" do
      assert_select "input#model_weekday[name=?]", "model[weekday]"
      assert_select "input#model_name[name=?]", "model[name]"
    end
  end
end
