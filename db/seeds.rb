# require_relative 'seeds/users.rb'
require_relative 'seeds/cryptocurrencies.rb'

puts '-' * 32

puts 'Destroying all records'
Cryptocurrency.destroy_all
User.destroy_all

puts '-' * 32

CRYPTOCURRENCIES.each do |currency|
  puts "Creating #{currency[:name]} currency..."
  response = HTTParty.get("https://api.coingecko.com/api/v3/coins/#{currency[:id]}")
  Cryptocurrency.create!(
    name: currency[:name],
    symbol: currency[:symbol],
    price: response['market_data']['current_price']['usd'],
    market_cap: response['market_data']['market_cap']['usd'],
    total_volume: response['market_data']['total_volume']['usd'],
    prices_updated_at: Time.now
  )
end

puts '-' * 32
