require "rails_helper"

RSpec.describe ContaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/conta").to route_to("conta#index")
    end

    it "routes to #new" do
      expect(:get => "/conta/new").to route_to("conta#new")
    end

    it "routes to #show" do
      expect(:get => "/conta/1").to route_to("conta#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/conta/1/edit").to route_to("conta#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/conta").to route_to("conta#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/conta/1").to route_to("conta#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/conta/1").to route_to("conta#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/conta/1").to route_to("conta#destroy", :id => "1")
    end

  end
end
