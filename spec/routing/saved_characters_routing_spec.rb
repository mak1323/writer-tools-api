require "rails_helper"

RSpec.describe SavedCharactersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/saved_characters").to route_to("saved_characters#index")
    end

    it "routes to #new" do
      expect(:get => "/saved_characters/new").to route_to("saved_characters#new")
    end

    it "routes to #show" do
      expect(:get => "/saved_characters/1").to route_to("saved_characters#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/saved_characters/1/edit").to route_to("saved_characters#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/saved_characters").to route_to("saved_characters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/saved_characters/1").to route_to("saved_characters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/saved_characters/1").to route_to("saved_characters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/saved_characters/1").to route_to("saved_characters#destroy", :id => "1")
    end

  end
end
