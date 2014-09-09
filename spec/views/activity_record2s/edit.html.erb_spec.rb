require 'spec_helper'

describe "activity_record2s/edit" do
  before(:each) do
    @activity_record2 = assign(:activity_record2, stub_model(ActivityRecord2,
      :user => nil,
      :coach => nil,
      :weekday => nil,
      :start_time => 1
    ))
  end

  it "renders the edit activity_record2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_record2_path(@activity_record2), "post" do
      assert_select "input#activity_record2_user[name=?]", "activity_record2[user]"
      assert_select "input#activity_record2_coach[name=?]", "activity_record2[coach]"
      assert_select "input#activity_record2_weekday[name=?]", "activity_record2[weekday]"
      assert_select "input#activity_record2_start_time[name=?]", "activity_record2[start_time]"
    end
  end
end
