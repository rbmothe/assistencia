require "rails_helper"

RSpec.describe CelularesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/celulares").to route_to("celulares#index")
    end

    it "routes to #new" do
      expect(:get => "/celulares/new").to route_to("celulares#new")
    end

    it "routes to #show" do
      expect(:get => "/celulares/1").to route_to("celulares#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/celulares/1/edit").to route_to("celulares#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/celulares").to route_to("celulares#create")
    end

    it "routes to #update" do
      expect(:put => "/celulares/1").to route_to("celulares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/celulares/1").to route_to("celulares#destroy", :id => "1")
    end

  end
end
