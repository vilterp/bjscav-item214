class Review < ActiveRecord::Base
  attr_accessible :atmosphere, :convenience, :fountain_id, :overall_rating, :quality, :review_text, :user_id
end
