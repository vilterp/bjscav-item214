class Review < ActiveRecord::Base
  attr_accessible :atmosphere, :convenience, :fountain_id, :overall_rating, :quality, :review_text, :user_id

  belongs_to :fountain
  belongs_to :user

end
