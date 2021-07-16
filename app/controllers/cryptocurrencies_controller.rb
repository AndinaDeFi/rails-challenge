class CryptocurrenciesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_cryptocurrency, only: %i[show favorite unfavorite]
  before_action :set_favorite_cryptocurrency, only: %i[favorite unfavorite]

  # GET /
  def index
    @cryptocurrencies = Cryptocurrency.order(market_cap: :desc)
  end

  # GET /cryptocurrencies/:id
  def show; end

  # GET /cryptocurrencies/:id/favorite
  def favorite
    if @favorite_cryptocurrency.nil?
      FavoriteCryptocurrency.create(user: current_user, cryptocurrency: @cryptocurrency)
      @cryptocurrency.increment_favorites_count!
      redirect_to root_path, notice: "#{@cryptocurrency.name} agregada a favoritos!" if @cryptocurrency.save
    else
      redirect_to root_path, alert: 'Ya tienes esta criptomoneda agregada a favoritos.'
    end
  end

  # GET /cryptocurrencies/:id/unfavorite
  def unfavorite
    if @favorite_cryptocurrency.present?
      @favorite_cryptocurrency.destroy
      @cryptocurrency.decrement_favorites_count!
      redirect_to root_path, notice: "#{@cryptocurrency.name} eliminada de favoritos!" if @cryptocurrency.save
    else
      redirect_to root_path, alert: 'No cuentas con esta moneda agregada a favoritos'
    end
  end

  private

  def set_favorite_cryptocurrency
    @favorite_cryptocurrency = FavoriteCryptocurrency.find(user: current_user, cryptocurrency: @cryptocurrency)
  end

  def set_cryptocurrency
    @cryptocurrency = Cryptocurrency.find(params[:id])
  end
end
