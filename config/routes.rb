Rails.application.routes.draw do
  resources :restaurants do
    # get '/restaurants/top', to: 'restaurants#top', as: :top_restaurants
    collection do
      get :top
    end

    member do
      # get '/restaurants/:id/chef', to: 'restaurants#chef', as: :chef_restaurant
      get :chef
    end

    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: :destroy
end
