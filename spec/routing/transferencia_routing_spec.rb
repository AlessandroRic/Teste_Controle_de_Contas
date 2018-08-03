require "rails_helper"

RSpec.describe TransferenciaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/transferencia").to route_to("transferencia#index")
    end

    it "routes to #new" do
      expect(:get => "/transferencia/new").to route_to("transferencia#new")
    end

    it "routes to #show" do
      expect(:get => "/transferencia/1").to route_to("transferencia#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/transferencia/1/edit").to route_to("transferencia#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/transferencia").to route_to("transferencia#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/transferencia/1").to route_to("transferencia#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/transferencia/1").to route_to("transferencia#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/transferencia/1").to route_to("transferencia#destroy", :id => "1")
    end

  end
end
