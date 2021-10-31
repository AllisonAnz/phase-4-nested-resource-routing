# config/routes.rb
Rails.application.routes.draw do
  #nested routes
  resources :dog_houses, only: [:show] do 
    #nested resources for reviews 
    resources :reviews, only: [:show, :index]
  end

  resources :reviews, only: [:show, :index, :create]

  # one way to do it
  #get '/dog_houses/:dog_house_id/reviews', to: 'dog_houses#reviews_index'
  #get '/dog_houses/:dog_house_id/reviews/:id', to: 'dog_houses#reviews'
end
