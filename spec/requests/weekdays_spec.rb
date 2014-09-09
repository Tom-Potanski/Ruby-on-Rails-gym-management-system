require 'spec_helper'

describe "Weekdays" do
  describe "GET /weekdays" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get weekdays_path
      response.status.should be(200)
    end
  end
end
