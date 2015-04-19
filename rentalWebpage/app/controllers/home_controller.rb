class HomeController < ApplicationController
  def index
    @properties = Property.all.last(10).reverse    
    respond_to do |format|
      format.html # index.html.erb
    end    
  end
end
