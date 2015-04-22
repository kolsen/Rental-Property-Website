class HomeController < ApplicationController
  def index
    @properties = Property.all.last(10).reverse
    if params[:search] != nil
      if Property.exists?(:address => params[:search])
        @properties = Property.all.where('address = ?', params[:search])
        flash[:notice] = 'We have found the following rental properties:'
      else 
        flash[:notice] = 'Sorry, we could not find that rental property!'
      end
    else 
      flash[:notice] = 'Please search for a rental property above.'
    end
    respond_to do |format|
      format.html # index.html.erb
    end 
  end
end
