require "rails_helper"

RSpec.describe FamilyNamesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/family_names").to route_to("family_names#index")
    end

    it "routes to #new" do
      expect(:get => "/family_names/new").to route_to("family_names#new")
    end

    it "routes to #show" do
      expect(:get => "/family_names/1").to route_to("family_names#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/family_names/1/edit").to route_to("family_names#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/family_names").to route_to("family_names#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/family_names/1").to route_to("family_names#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/family_names/1").to route_to("family_names#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/family_names/1").to route_to("family_names#destroy", :id => "1")
    end

  end
end
