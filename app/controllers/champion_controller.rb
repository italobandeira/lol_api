class ChampionController < ApplicationController
  before_action :set_champions

  def index
    @all_champions = @champions_service.all_champions
    @image_champions = @champions_service.image_champions
  end

  def show
    @one_champion = @champions_service.one_champion(params[:id])
    @splash_champion = @champions_service.splash_champion(params[:id])
    @image_spell = @champions_service.image_spell
    @image_passive_spell = @champions_service.image_passive_spell
  end

  private

  def set_champions
    @champions_service = Champions.new
  end
end
