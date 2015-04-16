class AddPropertyIdToReviews < ActiveRecord::Migration
  def change
    add_reference :reviews, :property, index: true
    add_foreign_key :reviews, :properties
  end
end
