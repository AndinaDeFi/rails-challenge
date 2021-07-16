require 'rails_helper'

RSpec.describe FavoriteCryptocurrency, type: :model do
  describe 'associations' do
    describe 'cryptocurrency' do
      it { expect(described_class.reflect_on_association(:cryptocurrency).macro).to eq(:belongs_to) }
    end

    describe 'user' do
      it { expect(described_class.reflect_on_association(:user).macro).to eq(:belongs_to) }
    end
  end
end
