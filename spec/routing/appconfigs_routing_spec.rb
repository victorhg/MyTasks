require "spec_helper"

describe AppconfigsController do
  describe "routing" do

    it "routes to #index" do
      get("/appconfigs").should route_to("appconfigs#index")
    end

    it "routes to #new" do
      get("/appconfigs/new").should route_to("appconfigs#new")
    end

    it "routes to #show" do
      get("/appconfigs/1").should route_to("appconfigs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/appconfigs/1/edit").should route_to("appconfigs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/appconfigs").should route_to("appconfigs#create")
    end

    it "routes to #update" do
      put("/appconfigs/1").should route_to("appconfigs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/appconfigs/1").should route_to("appconfigs#destroy", :id => "1")
    end

  end
end
