class Fountain < ActiveRecord::Base
  attr_accessible :building_id, :floor, :loc_info
  belongs_to :building

  has_many :reviews
end
