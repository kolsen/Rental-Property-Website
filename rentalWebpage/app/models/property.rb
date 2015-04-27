class Property < ActiveRecord::Base
  has_many :reviews
  ratyrate_rateable 'property'
  validates_presence_of :address, :city, :state, :zipcode, :message => "is required to continue"
  validates_numericality_of :zipcode, :message => "must be numberic"
end
