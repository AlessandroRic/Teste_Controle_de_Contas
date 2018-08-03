require "rails_helper"

RSpec.describe PessoaFisicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pessoa_fisicas").to route_to("pessoa_fisicas#index")
    end

    it "routes to #new" do
      expect(:get => "/pessoa_fisicas/new").to route_to("pessoa_fisicas#new")
    end

    it "routes to #show" do
      expect(:get => "/pessoa_fisicas/1").to route_to("pessoa_fisicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pessoa_fisicas/1/edit").to route_to("pessoa_fisicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pessoa_fisicas").to route_to("pessoa_fisicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pessoa_fisicas/1").to route_to("pessoa_fisicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pessoa_fisicas/1").to route_to("pessoa_fisicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pessoa_fisicas/1").to route_to("pessoa_fisicas#destroy", :id => "1")
    end

  end
end
