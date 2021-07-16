Rails.application.routes.draw do
  devise_for :users, skip: [:registrations], controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cryptocurrencies, only: %i[index show] do
    get 'favorite', on: :member
    get 'unfavorite', on: :member
  end

  root to: 'cryptocurrencies#index'
end
