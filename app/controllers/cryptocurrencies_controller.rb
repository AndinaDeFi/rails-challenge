class CryptocurrenciesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_cryptocurrency, only: %i[show]

  # GET /
  def index
    @cryptocurrencies = Cryptocurrency.order(market_cap: :desc)
  end

  # GET /cryptocurrencies/:id
  def show; end

  private

  def set_cryptocurrency
    @cryptocurrency = Cryptocurrency.find(params[:id])
  end
end
