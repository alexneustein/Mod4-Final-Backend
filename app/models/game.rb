class Game < ApplicationRecord

  has_many :player_games
  has_many :players, through: :player_games
  has_one :topic
  has_many :game_prompts
  has_many :prompts, through: :game_prompts

end
