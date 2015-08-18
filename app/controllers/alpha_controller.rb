class AlphaController < ApplicationController
  def index
  	
  end

  def login
  end

  def users
  end
  def evictionlist
  	@cust = cust 	
  	@evic = evic
  	@prop = prop
  end
end
