require 'spec_helper'

describe "/quotes/index.html.erb" do
  include QuotesHelper

  before(:each) do
    assigns[:quotes] = [
      stub_model(Quote,
        :person_id => 1,
        :text => "value for text"
      ),
      stub_model(Quote,
        :person_id => 1,
        :text => "value for text"
      )
    ]
  end

  it "renders a list of quotes" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for text".to_s, 2)
  end
end
