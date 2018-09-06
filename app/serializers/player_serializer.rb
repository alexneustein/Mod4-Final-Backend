class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :games, :topics

  # has_many :games, through: :player_games
  # has_many :topics, through: :games

end
