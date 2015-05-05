class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :review
      t.integer :helpful_total
      t.timestamps null: false
    end
  end
end
