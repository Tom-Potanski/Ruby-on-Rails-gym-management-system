require "spec_helper"

describe DietsController do
  describe "routing" do

    it "routes to #index" do
      get("/diets").should route_to("diets#index")
    end

    it "routes to #new" do
      get("/diets/new").should route_to("diets#new")
    end

    it "routes to #show" do
      get("/diets/1").should route_to("diets#show", :id => "1")
    end

    it "routes to #edit" do
      get("/diets/1/edit").should route_to("diets#edit", :id => "1")
    end

    it "routes to #create" do
      post("/diets").should route_to("diets#create")
    end

    it "routes to #update" do
      put("/diets/1").should route_to("diets#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/diets/1").should route_to("diets#destroy", :id => "1")
    end

  end
end
