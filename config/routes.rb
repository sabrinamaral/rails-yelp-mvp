Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'
  resources :restaurants, only: %i[new create show] do
    resources :reviews, only: %i[create]
  end
end
