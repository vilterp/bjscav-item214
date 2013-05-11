class AddColumnsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :temperature, :integer
  end
end
