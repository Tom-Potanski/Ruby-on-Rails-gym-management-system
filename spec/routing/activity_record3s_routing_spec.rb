require "spec_helper"

describe ActivityRecord3sController do
  describe "routing" do

    it "routes to #index" do
      get("/activity_record3s").should route_to("activity_record3s#index")
    end

    it "routes to #new" do
      get("/activity_record3s/new").should route_to("activity_record3s#new")
    end

    it "routes to #show" do
      get("/activity_record3s/1").should route_to("activity_record3s#show", :id => "1")
    end

    it "routes to #edit" do
      get("/activity_record3s/1/edit").should route_to("activity_record3s#edit", :id => "1")
    end

    it "routes to #create" do
      post("/activity_record3s").should route_to("activity_record3s#create")
    end

    it "routes to #update" do
      put("/activity_record3s/1").should route_to("activity_record3s#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/activity_record3s/1").should route_to("activity_record3s#destroy", :id => "1")
    end

  end
end
