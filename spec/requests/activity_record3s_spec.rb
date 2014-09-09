require 'spec_helper'

describe "ActivityRecord3s" do
  describe "GET /activity_record3s" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get activity_record3s_path
      response.status.should be(200)
    end
  end
end
