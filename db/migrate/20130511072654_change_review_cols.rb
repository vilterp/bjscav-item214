class ChangeReviewCols < ActiveRecord::Migration
  def up
    rename_column :reviews, :overall_rating, :overall_quality
    rename_column :reviews, :quality, :taste
  end

  def down
  end
end
