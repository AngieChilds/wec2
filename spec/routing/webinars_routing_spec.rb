require "spec_helper"

describe WebinarsController do
  describe "routing" do

    it "routes to #index" do
      get("/webinars").should route_to("webinars#index")
    end

    it "routes to #new" do
      get("/webinars/new").should route_to("webinars#new")
    end

    it "routes to #show" do
      get("/webinars/1").should route_to("webinars#show", :id => "1")
    end

    it "routes to #edit" do
      get("/webinars/1/edit").should route_to("webinars#edit", :id => "1")
    end

    it "routes to #create" do
      post("/webinars").should route_to("webinars#create")
    end

    it "routes to #update" do
      put("/webinars/1").should route_to("webinars#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/webinars/1").should route_to("webinars#destroy", :id => "1")
    end

  end
end
