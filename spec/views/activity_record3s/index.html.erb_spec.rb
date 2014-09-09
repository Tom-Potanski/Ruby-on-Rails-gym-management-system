require 'spec_helper'

describe "activity_record3s/index" do
  before(:each) do
    assign(:activity_record3s, [
      stub_model(ActivityRecord3,
        :user => nil,
        :coach => nil,
        :weekday => nil,
        :start_time => 1,
        :activity => nil
      ),
      stub_model(ActivityRecord3,
        :user => nil,
        :coach => nil,
        :weekday => nil,
        :start_time => 1,
        :activity => nil
      )
    ])
  end

  it "renders a list of activity_record3s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
