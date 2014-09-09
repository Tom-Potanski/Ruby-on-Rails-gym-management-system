require 'spec_helper'

describe "weekdays/show" do
  before(:each) do
    @weekday = assign(:weekday, stub_model(Weekday,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
