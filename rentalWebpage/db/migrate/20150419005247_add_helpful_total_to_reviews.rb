class AddHelpfulTotalToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :helpful_total, :integer
  end
end
