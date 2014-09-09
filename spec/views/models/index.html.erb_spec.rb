require 'spec_helper'

describe "models/index" do
  before(:each) do
    assign(:models, [
      stub_model(Model,
        :weekday => "Weekday",
        :name => "Name"
      ),
      stub_model(Model,
        :weekday => "Weekday",
        :name => "Name"
      )
    ])
  end

  it "renders a list of models" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Weekday".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
