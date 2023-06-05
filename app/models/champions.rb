class Champions
  require 'net/http'

  def initialize
    all_champions
  end

  def all_champions
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("https://ddragon.leagueoflegends.com/cdn/13.11.1/data/pt_BR/champion.json")
      )
    )
  end

  def one_champion(champion)
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("https://ddragon.leagueoflegends.com/cdn/13.11.1/data/pt_BR/champion/#{champion}.json")
      )
    )
  end

  def image_champions
    "https://ddragon.leagueoflegends.com/cdn/img/champion/loading/"
  end

  def splash_champion(champion)
    "http://ddragon.leagueoflegends.com/cdn/img/champion/splash/#{champion}_0.jpg"
  end

  def image_spell
    "https://ddragon.leagueoflegends.com/cdn/13.11.1/img/spell/"
  end

  def image_passive_spell
    "http://ddragon.leagueoflegends.com/cdn/13.11.1/img/passive/"
  end
end
