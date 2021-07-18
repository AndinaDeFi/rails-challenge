require 'rails_helper'
require 'capybara/rspec'
require_relative '../factories/cryptocurrencies.rb'
require_relative '../factories/users.rb'

RSpec.describe 'Cryptocurrencies', type: :request do
  let!(:crypto) { create(:cryptocurrency) }

  describe 'GET /index' do
    it 'returns http success' do
      get '/cryptocurrencies/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get "/cryptocurrencies/#{crypto.id}"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'the sign_in process (integration test)', type: :feature do
    before :each do
      create(:user, email: 'test@mail.com', password: '123456')
    end

    it 'signs in and add crypto to favorite' do
      visit new_user_session_path
      fill_in 'Email', with: 'test@mail.com'
      fill_in 'Password', with: '123456'

      click_button 'Log in'
      expect(page).to have_content 'Criptomonedas Listadas:'

      html = page.find('#favoriteCount')
      expect(html).to have_content '0'

      find("a[href='#{favorite_cryptocurrency_path(crypto)}']").click
      html = page.find('#favoriteCount')
      expect(html).to have_content '1'
      expect(User.last.cryptocurrencies).to include(crypto)
    end
  end
end
