class QuotesController < ApplicationController
  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def new
    @person = Person.find(params[:id])
    @quote = @person.quotes.build
  end

  def create
    @person = Person.find(params[:id])
    @quote = @person.quotes.build(params[:quote])

    if @quote.save
      flash[:notice] = 'Successfully Updated'
      redirect_to( :controller => 'people', :action => 'show', :id => "#{@person.id}")
    else
      render :action => 'new'
    end
  end
end
