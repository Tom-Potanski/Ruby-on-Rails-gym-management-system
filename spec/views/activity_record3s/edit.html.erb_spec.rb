require 'spec_helper'

describe "activity_record3s/edit" do
  before(:each) do
    @activity_record3 = assign(:activity_record3, stub_model(ActivityRecord3,
      :user => nil,
      :coach => nil,
      :weekday => nil,
      :start_time => 1,
      :activity => nil
    ))
  end

  it "renders the edit activity_record3 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_record3_path(@activity_record3), "post" do
      assert_select "input#activity_record3_user[name=?]", "activity_record3[user]"
      assert_select "input#activity_record3_coach[name=?]", "activity_record3[coach]"
      assert_select "input#activity_record3_weekday[name=?]", "activity_record3[weekday]"
      assert_select "input#activity_record3_start_time[name=?]", "activity_record3[start_time]"
      assert_select "input#activity_record3_activity[name=?]", "activity_record3[activity]"
    end
  end
end
