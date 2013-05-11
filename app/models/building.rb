class Building < ActiveRecord::Base
  attr_accessible :address, :slug, :human_readable_name, :area_id

  has_many :fountains
end
