class Champions
  require 'net/http'

  def initialize
    champions
  end

  def champions
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("https://ddragon.leagueoflegends.com/cdn/13.11.1/data/pt_BR/champion.json")
      )
    )
  end

  def image_champions
    "https://ddragon.leagueoflegends.com/cdn/img/champion/loading/"
  end
end
