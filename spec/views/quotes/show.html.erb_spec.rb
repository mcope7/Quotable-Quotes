require 'spec_helper'

describe "/quotes/show.html.erb" do
  include QuotesHelper
  before(:each) do
    assigns[:quote] = @quote = stub_model(Quote,
      :person_id => 1,
      :text => "value for text"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ text/)
  end
end
