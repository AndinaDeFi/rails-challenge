class ChangeIntegerLimitInCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    change_column :cryptocurrencies, :market_cap, :integer, limit: 8
    change_column :cryptocurrencies, :total_volume, :integer, limit: 8
  end
end
