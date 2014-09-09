require 'spec_helper'

describe "weekdays/edit" do
  before(:each) do
    @weekday = assign(:weekday, stub_model(Weekday,
      :name => "MyString"
    ))
  end

  it "renders the edit weekday form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", weekday_path(@weekday), "post" do
      assert_select "input#weekday_name[name=?]", "weekday[name]"
    end
  end
end
