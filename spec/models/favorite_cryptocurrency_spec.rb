require 'rails_helper'
require_relative '../factories/cryptocurrencies.rb'
require_relative '../factories/users.rb'
require_relative '../factories/favorite_cryptocurrencies.rb'

RSpec.describe FavoriteCryptocurrency, type: :model do
  let(:crypto) { create(:cryptocurrency) }
  let(:user) { create(:user) }
  describe 'associations' do
    describe 'cryptocurrency' do
      it { expect(described_class.reflect_on_association(:cryptocurrency).macro).to eq(:belongs_to) }
    end

    describe 'user' do
      it { expect(described_class.reflect_on_association(:user).macro).to eq(:belongs_to) }
    end
  end

  describe 'callbacks' do
    describe 'when object is created' do
      it 'increments cryptocurrency#favorite_count by 1' do
        fav_crypto = FavoriteCryptocurrency.new(
          cryptocurrency: crypto,
          user: user
        )
        expect { fav_crypto.save }.to change { fav_crypto.cryptocurrency.favorites_count }
        expect(fav_crypto.cryptocurrency.favorites_count).to eq(1)
      end
    end

    describe 'when object is destroyed' do
      it 'increments cryptocurrency#favorite_count by 1' do

        fav_crypto = FavoriteCryptocurrency.create(
          cryptocurrency: crypto,
          user: user
        )

        expect { fav_crypto.destroy }.to change { fav_crypto.cryptocurrency.favorites_count }
        expect(fav_crypto.cryptocurrency.favorites_count).to eq(0)
      end
    end
  end
end
