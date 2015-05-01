class PropertyListingController < ApplicationController
  def property_listing
    if params[:search] != nil
      if Property.exists?(:address => params[:search])
        @properties = Property.all.where('address = ?', params[:search])
        flash[:notice] = 'We have found the following rental properties:'
      else 
        flash[:notice] = 'Sorry, we could not find that rental property. Please search again.'
        @properties = nil
      end
    end
  end
end
