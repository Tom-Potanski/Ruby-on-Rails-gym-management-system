require 'spec_helper'

describe "activity_record3s/show" do
  before(:each) do
    @activity_record3 = assign(:activity_record3, stub_model(ActivityRecord3,
      :user => nil,
      :coach => nil,
      :weekday => nil,
      :start_time => 1,
      :activity => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
