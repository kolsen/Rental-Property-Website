class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :helpful_comment
      t.integer :unhelpful_comment
      t.references :reviews, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :reviews
  end
end
