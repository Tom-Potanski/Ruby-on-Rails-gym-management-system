require 'spec_helper'

describe "activity_record2s/index" do
  before(:each) do
    assign(:activity_record2s, [
      stub_model(ActivityRecord2,
        :user => nil,
        :coach => nil,
        :weekday => nil,
        :start_time => 1
      ),
      stub_model(ActivityRecord2,
        :user => nil,
        :coach => nil,
        :weekday => nil,
        :start_time => 1
      )
    ])
  end

  it "renders a list of activity_record2s" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
