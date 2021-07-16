class AddFavoritesCountToCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    add_column :cryptocurrencies, :favorites_count, :integer, default: 0
  end
end
