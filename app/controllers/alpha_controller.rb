class AlphaController < ApplicationController
layout "modal", except: [:index, :login, :evictionlist, :maps, :calendar] 
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
  def maps
    @cust = cust  
    @evic = evic
    @prop = prop
  end

  def calendar
    
    
  end
end
