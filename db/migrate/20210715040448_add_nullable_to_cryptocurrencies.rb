class AddNullableToCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    change_column_null :cryptocurrencies, :name, false
    change_column_null :cryptocurrencies, :symbol, false
    change_column_null :cryptocurrencies, :pair, false
    change_column_null :cryptocurrencies, :price, false
    change_column_null :cryptocurrencies, :market_cap, false
    change_column_null :cryptocurrencies, :total_volume, false
  end
end
