class HomeController < ApplicationController
  def index
    @properties = Property.includes(:reviews).order('reviews.created_at').limit(10).reverse
  end
end
