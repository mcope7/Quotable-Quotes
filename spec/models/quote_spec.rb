require 'spec_helper'

describe Quote do
  before(:each) do
    @valid_attributes = {
      :person_id => 1,
      :text => "value for text"
    }
  end

  it "should create a new instance given valid attributes" do
    Quote.create!(@valid_attributes)
  end
end
