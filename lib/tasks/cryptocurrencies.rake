require_relative '../../db/seeds/cryptocurrencies.rb'

namespace :cryptocurrencies do
  desc 'Update Cryptocurrencies Prices'
  task update_prices: :environment do
    CRYPTOCURRENCIES.each do |currency|
      crypto = Cryptocurrency.find_by(symbol: currency[:symbol])

      response = HTTParty.get("https://api.coingecko.com/api/v3/coins/#{currency[:id]}")

      crypto.update(
        price: response['market_data']['current_price']['usd'],
        market_cap: response['market_data']['market_cap']['usd'],
        total_volume: response['market_data']['total_volume']['usd'],
        prices_updated_at: Time.now
      )
    end
  end
end
