require "spec_helper"

describe ActivityRecord2sController do
  describe "routing" do

    it "routes to #index" do
      get("/activity_record2s").should route_to("activity_record2s#index")
    end

    it "routes to #new" do
      get("/activity_record2s/new").should route_to("activity_record2s#new")
    end

    it "routes to #show" do
      get("/activity_record2s/1").should route_to("activity_record2s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/activity_record2s/1/edit").should route_to("activity_record2s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/activity_record2s").should route_to("activity_record2s#create")
    end

    it "routes to #update" do
      put("/activity_record2s/1").should route_to("activity_record2s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/activity_record2s/1").should route_to("activity_record2s#destroy", :id => "1")
    end

  end
end
