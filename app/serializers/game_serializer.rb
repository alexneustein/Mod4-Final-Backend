class GameSerializer < ActiveModel::Serializer
  attributes :id, :players, :prompts, :winner_id, :topic
end
