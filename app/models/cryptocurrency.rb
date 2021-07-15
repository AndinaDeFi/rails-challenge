class Cryptocurrency < ApplicationRecord
  enum pair: { USD: 0 }
  validates :name, :symbol, :pair, :price, :market_cap, :total_volume, presence: true
  validates :price, :market_cap, :total_volume, numericality: true
  validates :name, :symbol, uniqueness: true
end
