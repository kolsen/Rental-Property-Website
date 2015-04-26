class HomeController < ApplicationController
  def index
    flash[:notice] = 'Please search for a rental property above.'
    @properties = Property.all.last(10).reverse    
  end
end
