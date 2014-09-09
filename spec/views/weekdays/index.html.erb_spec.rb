require 'spec_helper'

describe "weekdays/index" do
  before(:each) do
    assign(:weekdays, [
      stub_model(Weekday,
        :name => "Name"
      ),
      stub_model(Weekday,
        :name => "Name"
      )
    ])
  end

  it "renders a list of weekdays" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
