class FavoriteCryptocurrency < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :cryptocurrency

  # Callbacks
  after_create :increment_favorites_count
  after_destroy :decrement_favorites_count

  # Instance Methods
  def increment_favorites_count
    cryptocurrency.increment_favorites_count!
    cryptocurrency.save
  end

  def decrement_favorites_count
    cryptocurrency.decrement_favorites_count!
    cryptocurrency.save
  end
end
