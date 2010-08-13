require 'spec_helper'

describe PeopleController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/authors" }.should route_to(:controller => "people", :action => "index")
    end

    it "recognizes and generates #show" do
      { :get => "/author/1" }.should route_to(:controller => "people", :action => "show", :id => "1")
    end
  end
end
