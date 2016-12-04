class QuotesController < ApplicationController
  
  def index
    @quote = Quote.random.first
  end

end
