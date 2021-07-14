class AddFieldsToCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    add_column :cryptocurrencies, :total_volume, :integer
    add_column :cryptocurrencies, :prices_updated_at, :datetime
  end
end
