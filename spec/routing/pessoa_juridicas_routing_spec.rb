require "rails_helper"

RSpec.describe PessoaJuridicasController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pessoa_juridicas").to route_to("pessoa_juridicas#index")
    end

    it "routes to #new" do
      expect(:get => "/pessoa_juridicas/new").to route_to("pessoa_juridicas#new")
    end

    it "routes to #show" do
      expect(:get => "/pessoa_juridicas/1").to route_to("pessoa_juridicas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pessoa_juridicas/1/edit").to route_to("pessoa_juridicas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pessoa_juridicas").to route_to("pessoa_juridicas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pessoa_juridicas/1").to route_to("pessoa_juridicas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pessoa_juridicas/1").to route_to("pessoa_juridicas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pessoa_juridicas/1").to route_to("pessoa_juridicas#destroy", :id => "1")
    end

  end
end
