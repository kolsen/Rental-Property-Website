class Property < ActiveRecord::Base
  has_many :reviews
  validates_presence_of :address, :city, :state, :zipcode
  validates_numericality_of :zipcode
end
