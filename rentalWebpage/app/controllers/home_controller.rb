class HomeController < ApplicationController
  def index
    @properties = Property.all.last(10).reverse    
  end
end
