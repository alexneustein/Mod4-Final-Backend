class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :player_games, :games, :topics

  # has_many :games, through: :player_games
  # has_many :topics, through: :games

end
