class FountainsController < ApplicationController

  before_filter :authenticate_user!

  def show
    @fountain = Fountain.find(params[:fountain_id])
    @review = Review.new :fountain_id => @fountain.id, :user_id => current_user.id
  end

  def save_rating
    @review = Review.create params[:review]
    redirect_to :action => :show, :fountain_id => @review.fountain_id
  end

  def add_new
    @building = Building.find_by_slug(params[:building_slug])
    @fountain = Fountain.new
  end

  def save_new
    @building = Building.find_by_slug(params[:building_slug])
    @fountain = Fountain.new params[:fountain]
    @fountain.building_id = @building.id
    @fountain.save
    redirect_to :action => :show, :fountain_id => @fountain.id
  end

end
