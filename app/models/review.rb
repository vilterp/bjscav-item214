class Review < ActiveRecord::Base
  attr_accessible :atmosphere, :convenience, :fountain_id, :overall_quality, :taste, :review_text, :temperature, :user_id

  belongs_to :fountain
  belongs_to :user

end
