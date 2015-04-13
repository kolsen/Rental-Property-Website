class HomeController < ApplicationController
  def index
    @add_properties = AddProperty.all    
    respond_to do |format|
      format.html # index.html.erb
    end
  end
end
