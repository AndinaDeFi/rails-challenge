require 'rails_helper'

RSpec.describe "Cryptocurrencies", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/cryptocurrencies/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/cryptocurrencies/show"
      expect(response).to have_http_status(:success)
    end
  end
end
