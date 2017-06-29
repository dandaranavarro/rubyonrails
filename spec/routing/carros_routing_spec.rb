require "rails_helper"

RSpec.describe CarrosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/carros").to route_to("carros#index")
    end

    it "routes to #new" do
      expect(:get => "/carros/new").to route_to("carros#new")
    end

    it "routes to #show" do
      expect(:get => "/carros/1").to route_to("carros#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/carros/1/edit").to route_to("carros#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/carros").to route_to("carros#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/carros/1").to route_to("carros#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/carros/1").to route_to("carros#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/carros/1").to route_to("carros#destroy", :id => "1")
    end

  end
end
