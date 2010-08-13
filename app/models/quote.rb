class Quote < ActiveRecord::Base

  belongs_to :person

  validates_presence_of :text, :message => "is needed for the quote."


  def self.random_quote
    quotes = self.find(:all)
    range = quotes.length
    random_pick = rand(quotes.length)
    quotes[random_pick].id
  end
end
