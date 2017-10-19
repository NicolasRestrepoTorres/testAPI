require "rails_helper"

RSpec.describe UserRspecsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_rspecs").to route_to("user_rspecs#index")
    end


    it "routes to #show" do
      expect(:get => "/user_rspecs/1").to route_to("user_rspecs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/user_rspecs").to route_to("user_rspecs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/user_rspecs/1").to route_to("user_rspecs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/user_rspecs/1").to route_to("user_rspecs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_rspecs/1").to route_to("user_rspecs#destroy", :id => "1")
    end

  end
end
