class ReviewsController < ApplicationController
  def create
    @property = Property.find(params[:property_id])
    @review = @property.reviews.create(review_params)
    redirect_to property_path(@property)
  end
 
  def helpful
    @property = Property.find(params[:property_id])
    @review = @property.reviews.find(params[:id])      
    if @review.helpful_total.nil? || @review.helpful_total == 0
      @review.helpful_total = 1 
    else
      @review.helpful_total = @review.helpful_total + 1        
    end
    @review.save
    redirect_to @property 
  end

  private
    def review_params
      params.require(:review).permit(:review, :helpful_total)
    end

    def addReview

    end
  
end