class FountainsController < ApplicationController

  def show(fountain_id)
    @fountain = Fountain.find(fountain_id)
  end

  def add_rating
  end

end
