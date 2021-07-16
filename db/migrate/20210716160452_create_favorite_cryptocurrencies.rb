class CreateFavoriteCryptocurrencies < ActiveRecord::Migration[6.1]
  def change
    create_table :favorite_cryptocurrencies do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cryptocurrency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
