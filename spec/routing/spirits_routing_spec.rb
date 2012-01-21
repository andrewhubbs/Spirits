require "spec_helper"

describe SpiritsController do
  describe "routing" do

    it "routes to #index" do
      get("/spirits").should route_to("spirits#index")
    end

    it "routes to #new" do
      get("/spirits/new").should route_to("spirits#new")
    end

    it "routes to #show" do
      get("/spirits/1").should route_to("spirits#show", :id => "1")
    end

    it "routes to #edit" do
      get("/spirits/1/edit").should route_to("spirits#edit", :id => "1")
    end

    it "routes to #create" do
      post("/spirits").should route_to("spirits#create")
    end

    it "routes to #update" do
      put("/spirits/1").should route_to("spirits#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/spirits/1").should route_to("spirits#destroy", :id => "1")
    end

  end
end
