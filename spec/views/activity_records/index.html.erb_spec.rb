require 'spec_helper'

describe "activity_records/index" do
  before(:each) do
    assign(:activity_records, [
      stub_model(ActivityRecord,
        :activity_id => 1,
        :coach_id_integer => "Coach Id Integer",
        :user_id => 2
      ),
      stub_model(ActivityRecord,
        :activity_id => 1,
        :coach_id_integer => "Coach Id Integer",
        :user_id => 2
      )
    ])
  end

  it "renders a list of activity_records" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Coach Id Integer".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
