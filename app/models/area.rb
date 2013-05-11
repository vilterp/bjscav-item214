class Area < ActiveRecord::Base
  attr_accessible :name, :map_html

  has_many :buildings

end

# HydRater
