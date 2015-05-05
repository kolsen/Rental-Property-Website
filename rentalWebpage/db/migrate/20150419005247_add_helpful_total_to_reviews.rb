class AddHelpfulTotalToReviews < ActiveRecord::Migration
  belongs_to :user
  def change
    add_column :reviews, :helpful_total, :integer
  end
end
