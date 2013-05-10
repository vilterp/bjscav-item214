class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :fountain_id
      t.integer :convenience
      t.integer :quality
      t.integer :atmosphere
      t.text :review_text
      t.integer :overall_rating

      t.timestamps
    end
  end
end
