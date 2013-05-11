class Building < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :fountains
end
