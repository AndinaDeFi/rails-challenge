class FavoriteCryptocurrency < ApplicationRecord
  belongs_to :user
  belongs_to :cryptocurrency
end
