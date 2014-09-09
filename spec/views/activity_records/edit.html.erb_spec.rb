require 'spec_helper'

describe "activity_records/edit" do
  before(:each) do
    @activity_record = assign(:activity_record, stub_model(ActivityRecord,
      :activity_id => 1,
      :coach_id_integer => "MyString",
      :user_id => 1
    ))
  end

  it "renders the edit activity_record form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", activity_record_path(@activity_record), "post" do
      assert_select "input#activity_record_activity_id[name=?]", "activity_record[activity_id]"
      assert_select "input#activity_record_coach_id_integer[name=?]", "activity_record[coach_id_integer]"
      assert_select "input#activity_record_user_id[name=?]", "activity_record[user_id]"
    end
  end
end
