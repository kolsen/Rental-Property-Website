class ReviewsController < ApplicationController
  def create
    @property = Property.find(params[:property_id])
    @review = @property.reviews.create(review_params)
    redirect_to property_path(@property)
  end
 
  def helpful
    helpful = Review.find(params[:review_id])
    helpful.update_attribute(:helpful_total, helpful.helpful_total + 1)
  end
  
  private
  def review_params
    params.require(:review).permit(:review, :helpful_total)
  end
  
  def addReview
    
  end
  
  
end