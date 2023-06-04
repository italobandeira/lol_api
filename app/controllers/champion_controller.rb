class ChampionController < ApplicationController
  before_action :set_champions

  def index
    @champion = @champions_service.champions
    @heroes   = @champions_service.image_champions
  end

  private

  def set_champions
    @champions_service = Champions.new
  end
end
