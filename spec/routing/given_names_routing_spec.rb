require "rails_helper"

RSpec.describe GivenNamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/given_names").to route_to("given_names#index")
    end

    it "routes to #new" do
      expect(:get => "/given_names/new").to route_to("given_names#new")
    end

    it "routes to #show" do
      expect(:get => "/given_names/1").to route_to("given_names#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/given_names/1/edit").to route_to("given_names#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/given_names").to route_to("given_names#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/given_names/1").to route_to("given_names#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/given_names/1").to route_to("given_names#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/given_names/1").to route_to("given_names#destroy", :id => "1")
    end

  end
end
