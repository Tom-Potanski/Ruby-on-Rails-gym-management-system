require 'spec_helper'

describe "activity_records/show" do
  before(:each) do
    @activity_record = assign(:activity_record, stub_model(ActivityRecord,
      :activity_id => 1,
      :coach_id_integer => "Coach Id Integer",
      :user_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Coach Id Integer/)
    rendered.should match(/2/)
  end
end
