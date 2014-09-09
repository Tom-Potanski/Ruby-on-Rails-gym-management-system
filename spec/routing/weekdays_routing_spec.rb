require "spec_helper"

describe WeekdaysController do
  describe "routing" do

    it "routes to #index" do
      get("/weekdays").should route_to("weekdays#index")
    end

    it "routes to #new" do
      get("/weekdays/new").should route_to("weekdays#new")
    end

    it "routes to #show" do
      get("/weekdays/1").should route_to("weekdays#show", :id => "1")
    end

    it "routes to #edit" do
      get("/weekdays/1/edit").should route_to("weekdays#edit", :id => "1")
    end

    it "routes to #create" do
      post("/weekdays").should route_to("weekdays#create")
    end

    it "routes to #update" do
      put("/weekdays/1").should route_to("weekdays#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/weekdays/1").should route_to("weekdays#destroy", :id => "1")
    end

  end
end
