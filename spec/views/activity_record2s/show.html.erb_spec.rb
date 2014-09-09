require 'spec_helper'

describe "activity_record2s/show" do
  before(:each) do
    @activity_record2 = assign(:activity_record2, stub_model(ActivityRecord2,
      :user => nil,
      :coach => nil,
      :weekday => nil,
      :start_time => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
  end
end
