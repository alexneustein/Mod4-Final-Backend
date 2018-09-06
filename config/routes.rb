Rails.application.routes.draw do
  resources :game_prompts
  resources :prompts
  resources :topics
  resources :player_games
  resources :games
  resources :players
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
