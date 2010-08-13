require 'spec_helper'

describe "/quotes/new.html.erb" do
  include QuotesHelper

  before(:each) do
    assigns[:quote] = stub_model(Quote,
      :new_record? => true,
      :person_id => 1,
      :text => "value for text"
    )
  end

  it "renders new quote form" do
    render

    response.should have_tag("form[action=?][method=post]", quotes_path) do
      with_tag("input#quote_person_id[name=?]", "quote[person_id]")
      with_tag("textarea#quote_text[name=?]", "quote[text]")
    end
  end
end
