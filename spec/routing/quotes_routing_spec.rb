require 'spec_helper'

describe QuotesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/quotes" }.should route_to(:controller => "quotes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/quotes/new" }.should route_to(:controller => "quotes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/quotes/1" }.should route_to(:controller => "quotes", :action => "show", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/quotes" }.should route_to(:controller => "quotes", :action => "create") 
    end
  end
end
