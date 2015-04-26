class Review < ActiveRecord::Base
  belongs_to :property
  ratyrate_rateable 'review'
end
