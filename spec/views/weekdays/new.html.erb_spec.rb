require 'spec_helper'

describe "weekdays/new" do
  before(:each) do
    assign(:weekday, stub_model(Weekday,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new weekday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekdays_path, "post" do
      assert_select "input#weekday_name[name=?]", "weekday[name]"
    end
  end
end
