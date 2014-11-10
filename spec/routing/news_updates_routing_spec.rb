require "rails_helper"

RSpec.describe NewsUpdatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/news_updates").to route_to("news_updates#index")
    end

    it "routes to #new" do
      expect(:get => "/news_updates/new").to route_to("news_updates#new")
    end

    it "routes to #show" do
      expect(:get => "/news_updates/1").to route_to("news_updates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/news_updates/1/edit").to route_to("news_updates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/news_updates").to route_to("news_updates#create")
    end

    it "routes to #update" do
      expect(:put => "/news_updates/1").to route_to("news_updates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/news_updates/1").to route_to("news_updates#destroy", :id => "1")
    end

  end
end
