require "rails_helper"

RSpec.describe AdjectivesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/adjectives").to route_to("adjectives#index")
    end

    it "routes to #new" do
      expect(:get => "/adjectives/new").to route_to("adjectives#new")
    end

    it "routes to #show" do
      expect(:get => "/adjectives/1").to route_to("adjectives#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/adjectives/1/edit").to route_to("adjectives#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/adjectives").to route_to("adjectives#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/adjectives/1").to route_to("adjectives#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/adjectives/1").to route_to("adjectives#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/adjectives/1").to route_to("adjectives#destroy", :id => "1")
    end

  end
end
