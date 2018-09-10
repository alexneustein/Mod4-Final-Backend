Rails.application.routes.draw do
  resources :game_prompts
  resources :prompts
  resources :topics
  resources :player_games
  resources :games
  resources :players



  Rails.application.routes.draw do
    mount ActionCable.server => '/cable'
    post '/login', to: 'auth#login'
    get '/reauth', to: 'auth#reauth'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
