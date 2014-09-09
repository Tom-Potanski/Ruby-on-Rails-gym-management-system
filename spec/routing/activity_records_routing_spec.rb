require "spec_helper"

describe ActivityRecordsController do
  describe "routing" do

    it "routes to #index" do
      get("/activity_records").should route_to("activity_records#index")
    end

    it "routes to #new" do
      get("/activity_records/new").should route_to("activity_records#new")
    end

    it "routes to #show" do
      get("/activity_records/1").should route_to("activity_records#show", :id => "1")
    end

    it "routes to #edit" do
      get("/activity_records/1/edit").should route_to("activity_records#edit", :id => "1")
    end

    it "routes to #create" do
      post("/activity_records").should route_to("activity_records#create")
    end

    it "routes to #update" do
      put("/activity_records/1").should route_to("activity_records#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/activity_records/1").should route_to("activity_records#destroy", :id => "1")
    end

  end
end
