class AddPairDefaultToCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    change_column_default :cryptocurrencies, :pair, 0
  end
end
