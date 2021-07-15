require 'rails_helper'
require_relative '../factories/cryptocurrencies.rb'

RSpec.describe Cryptocurrency, type: :model do
  subject { create(:cryptocurrency) }
  let(:pairs) { ['USD'] }

  describe 'validations' do
    describe 'name' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.name = nil
        expect(subject).to_not be_valid
      end

      it 'must be unique' do
        expect(subject).to be_valid

        subject_clone = create(:cryptocurrency)
        subject_clone.name = subject.name
        expect(subject_clone).to_not be_valid
      end
    end

    describe 'symbol' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.symbol = nil
        expect(subject).to_not be_valid
      end

      it 'must be unique' do
        expect(subject).to be_valid

        subject_clone = create(:cryptocurrency)
        subject_clone.symbol = subject.symbol
        expect(subject_clone).to_not be_valid
      end
    end

    describe 'pair' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.pair = nil
        expect(subject).to_not be_valid
      end

      it 'must have default value when created' do
        expect(subject.pair).to eq(Cryptocurrency.pairs.keys[0])
      end

      it 'must have an enum value' do
        pairs.each_with_index do |pair, index|
          expect(described_class.pairs[pair]).to eq index
        end
      end
    end

    describe 'price' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.price = nil
        expect(subject).to_not be_valid
      end

      it 'must have only numbers' do
        expect(subject).to be_valid

        subject.price = 'AB001'
        expect(subject).to_not be_valid
      end
    end

    describe 'market_cap' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.market_cap = nil
        expect(subject).to_not be_valid
      end

      it 'must have only numbers' do
        expect(subject).to be_valid

        subject.market_cap = 'AB001'
        expect(subject).to_not be_valid
      end
    end

    describe 'total_volume' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.total_volume = nil
        expect(subject).to_not be_valid
      end

      it 'must have only numbers' do
        expect(subject).to be_valid

        subject.total_volume = 'AB001'
        expect(subject).to_not be_valid
      end
    end
  end
end
