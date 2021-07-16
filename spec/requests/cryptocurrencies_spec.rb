require 'rails_helper'
require_relative '../factories/cryptocurrencies.rb'

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
end
