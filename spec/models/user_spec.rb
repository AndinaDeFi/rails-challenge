require 'rails_helper'
require_relative '../factories/users.rb'

RSpec.describe User, type: :model do
  subject { create(:user) }

  describe 'validations' do
    describe 'email' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.email = nil
        expect(subject).to_not be_valid
      end

      it 'must be unique' do
        expect(subject).to be_valid

        subject_clone = create(:user)
        subject_clone.email = subject.email
        expect(subject_clone).to_not be_valid
      end

      it 'must have email format' do
        expect(subject).to be_valid

        subject.email = 'not an email'
        expect(subject).to_not be_valid
      end
    end

    describe 'password' do
      it 'must be present' do
        expect(subject).to be_valid

        subject.password = nil
        expect(subject).to_not be_valid
      end

      it 'must have a min length' do
        expect(subject).to be_valid

        subject.password = 123
        expect(subject).to_not be_valid
      end
    end
  end
end
