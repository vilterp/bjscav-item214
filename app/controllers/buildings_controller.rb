class BuildingsController < ApplicationController

  def index
    puts 'hello world'
  end

  def area
    @area = Area.find_by_slug(params[:area_name])
  end

  def building
    @building = Building.find_by_slug(params[:building_name])
  end

end
