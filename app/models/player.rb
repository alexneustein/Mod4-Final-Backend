class Player < ApplicationRecord

has_many :player_games
has_many :games, through: :player_games
has_many :game_prompts, through: :games
has_many :prompts, through: :game_prompts
has_many :topics, through: :prompts
#
# has_secure_password
# validates :password_digest, presence: true
#
# validates :username, presence: true
# validates :username, length: {in: 6..15}
# validates :username, uniqueness: {case_sensitive: false}


end
