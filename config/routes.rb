Rails.application.routes.draw do
  get '/home', to: "home#index"
  # post '/home/distance', to: "home#distance", as: 'distance'
  post '/home', to: "home#distance", as: 'distance'
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
