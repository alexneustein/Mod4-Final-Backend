class Prompt < ApplicationRecord
  belongs_to :topic
  has_many :game_prompts
  has_many :games, through: :game_prompts
end
